; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_smsc9420.c_smsc9420_check_mac_address.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_smsc9420.c_smsc9420_check_mac_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i8** }
%struct.smsc9420_pdata = type { i32 }

@PROBE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"MAC Address is specified by configuration\00", align 1
@ADDRH = common dso_local global i32 0, align 4
@ADDRL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Mac Address is read from EEPROM\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"MAC Address is set to random_ether_addr\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @smsc9420_check_mac_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smsc9420_check_mac_address(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.smsc9420_pdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.smsc9420_pdata* @netdev_priv(%struct.net_device* %6)
  store %struct.smsc9420_pdata* %7, %struct.smsc9420_pdata** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 0
  %10 = load i8**, i8*** %9, align 8
  %11 = call i64 @is_valid_ether_addr(i8** %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.net_device*, %struct.net_device** %2, align 8
  %15 = call i32 @smsc9420_set_mac_address(%struct.net_device* %14)
  %16 = load i32, i32* @PROBE, align 4
  %17 = call i32 @smsc_dbg(i32 %16, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %89

18:                                               ; preds = %1
  %19 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %3, align 8
  %20 = load i32, i32* @ADDRH, align 4
  %21 = call i32 @smsc9420_reg_read(%struct.smsc9420_pdata* %19, i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %3, align 8
  %23 = load i32, i32* @ADDRL, align 4
  %24 = call i32 @smsc9420_reg_read(%struct.smsc9420_pdata* %22, i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = inttoptr i64 %26 to i8*
  %28 = load %struct.net_device*, %struct.net_device** %2, align 8
  %29 = getelementptr inbounds %struct.net_device, %struct.net_device* %28, i32 0, i32 0
  %30 = load i8**, i8*** %29, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 0
  store i8* %27, i8** %31, align 8
  %32 = load i32, i32* %5, align 4
  %33 = ashr i32 %32, 8
  %34 = sext i32 %33 to i64
  %35 = inttoptr i64 %34 to i8*
  %36 = load %struct.net_device*, %struct.net_device** %2, align 8
  %37 = getelementptr inbounds %struct.net_device, %struct.net_device* %36, i32 0, i32 0
  %38 = load i8**, i8*** %37, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 1
  store i8* %35, i8** %39, align 8
  %40 = load i32, i32* %5, align 4
  %41 = ashr i32 %40, 16
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to i8*
  %44 = load %struct.net_device*, %struct.net_device** %2, align 8
  %45 = getelementptr inbounds %struct.net_device, %struct.net_device* %44, i32 0, i32 0
  %46 = load i8**, i8*** %45, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 2
  store i8* %43, i8** %47, align 8
  %48 = load i32, i32* %5, align 4
  %49 = ashr i32 %48, 24
  %50 = sext i32 %49 to i64
  %51 = inttoptr i64 %50 to i8*
  %52 = load %struct.net_device*, %struct.net_device** %2, align 8
  %53 = getelementptr inbounds %struct.net_device, %struct.net_device* %52, i32 0, i32 0
  %54 = load i8**, i8*** %53, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 3
  store i8* %51, i8** %55, align 8
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = inttoptr i64 %57 to i8*
  %59 = load %struct.net_device*, %struct.net_device** %2, align 8
  %60 = getelementptr inbounds %struct.net_device, %struct.net_device* %59, i32 0, i32 0
  %61 = load i8**, i8*** %60, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i64 4
  store i8* %58, i8** %62, align 8
  %63 = load i32, i32* %4, align 4
  %64 = ashr i32 %63, 8
  %65 = sext i32 %64 to i64
  %66 = inttoptr i64 %65 to i8*
  %67 = load %struct.net_device*, %struct.net_device** %2, align 8
  %68 = getelementptr inbounds %struct.net_device, %struct.net_device* %67, i32 0, i32 0
  %69 = load i8**, i8*** %68, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i64 5
  store i8* %66, i8** %70, align 8
  %71 = load %struct.net_device*, %struct.net_device** %2, align 8
  %72 = getelementptr inbounds %struct.net_device, %struct.net_device* %71, i32 0, i32 0
  %73 = load i8**, i8*** %72, align 8
  %74 = call i64 @is_valid_ether_addr(i8** %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %18
  %77 = load i32, i32* @PROBE, align 4
  %78 = call i32 @smsc_dbg(i32 %77, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %88

79:                                               ; preds = %18
  %80 = load %struct.net_device*, %struct.net_device** %2, align 8
  %81 = getelementptr inbounds %struct.net_device, %struct.net_device* %80, i32 0, i32 0
  %82 = load i8**, i8*** %81, align 8
  %83 = call i32 @random_ether_addr(i8** %82)
  %84 = load %struct.net_device*, %struct.net_device** %2, align 8
  %85 = call i32 @smsc9420_set_mac_address(%struct.net_device* %84)
  %86 = load i32, i32* @PROBE, align 4
  %87 = call i32 @smsc_dbg(i32 %86, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %88

88:                                               ; preds = %79, %76
  br label %89

89:                                               ; preds = %88, %13
  ret void
}

declare dso_local %struct.smsc9420_pdata* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @is_valid_ether_addr(i8**) #1

declare dso_local i32 @smsc9420_set_mac_address(%struct.net_device*) #1

declare dso_local i32 @smsc_dbg(i32, i8*) #1

declare dso_local i32 @smsc9420_reg_read(%struct.smsc9420_pdata*, i32) #1

declare dso_local i32 @random_ether_addr(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
