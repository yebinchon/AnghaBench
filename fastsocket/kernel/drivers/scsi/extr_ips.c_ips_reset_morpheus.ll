; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ips.c_ips_reset_morpheus.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ips.c_ips_reset_morpheus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_8__*, i64, i32, i32 }
%struct.TYPE_6__ = type { i64 (%struct.TYPE_7__*)* }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"ips_reset_morpheus\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"(%s%d) ips_reset_morpheus: mem addr: %x, irq: %d\00", align 1
@ips_name = common dso_local global i32 0, align 4
@IPS_REG_I960_IDR = common dso_local global i64 0, align 8
@IPS_ONE_SEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @ips_reset_morpheus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ips_reset_morpheus(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %6 = call i32 @METHOD_TRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 1)
  %7 = load i32, i32* @ips_name, align 4
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @DEBUG_VAR(i32 1, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %7, i32 %10, i32 %13, i32 %18)
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %52, %1
  %21 = load i32, i32* %4, align 4
  %22 = icmp slt i32 %21, 2
  br i1 %22, label %23, label %53

23:                                               ; preds = %20
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %4, align 4
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @IPS_REG_I960_IDR, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @writel(i32 -2147483648, i64 %30)
  %32 = load i32, i32* @IPS_ONE_SEC, align 4
  %33 = mul nsw i32 5, %32
  %34 = call i32 @MDELAY(i32 %33)
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = call i32 @pci_read_config_byte(%struct.TYPE_8__* %37, i32 4, i32* %5)
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i64 (%struct.TYPE_7__*)*, i64 (%struct.TYPE_7__*)** %41, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %44 = call i64 %42(%struct.TYPE_7__* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %23
  br label %53

47:                                               ; preds = %23
  %48 = load i32, i32* %4, align 4
  %49 = icmp sge i32 %48, 2
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  store i32 0, i32* %2, align 4
  br label %54

51:                                               ; preds = %47
  br label %52

52:                                               ; preds = %51
  br label %20

53:                                               ; preds = %46, %20
  store i32 1, i32* %2, align 4
  br label %54

54:                                               ; preds = %53, %50
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @METHOD_TRACE(i8*, i32) #1

declare dso_local i32 @DEBUG_VAR(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @MDELAY(i32) #1

declare dso_local i32 @pci_read_config_byte(%struct.TYPE_8__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
