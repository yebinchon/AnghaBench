; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_e100.c_e100_load_ucode_wait.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_e100.c_e100_load_ucode_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nic = type { i32, %struct.TYPE_4__*, i32, %struct.cb* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.cb = type { i32 }
%struct.firmware = type { i32 }

@e100_setup_ucode = common dso_local global i32 0, align 4
@probe = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"ucode cmd failed with error %d\0A\00", align 1
@cuc_start = common dso_local global i32 0, align 4
@cb_complete = common dso_local global i32 0, align 4
@cb_ok = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"ucode load failed\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nic*)* @e100_load_ucode_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e100_load_ucode_wait(%struct.nic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nic*, align 8
  %4 = alloca %struct.firmware*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cb*, align 8
  store %struct.nic* %0, %struct.nic** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 50, i32* %6, align 4
  %8 = load %struct.nic*, %struct.nic** %3, align 8
  %9 = getelementptr inbounds %struct.nic, %struct.nic* %8, i32 0, i32 3
  %10 = load %struct.cb*, %struct.cb** %9, align 8
  store %struct.cb* %10, %struct.cb** %7, align 8
  %11 = load %struct.nic*, %struct.nic** %3, align 8
  %12 = call %struct.firmware* @e100_request_firmware(%struct.nic* %11)
  store %struct.firmware* %12, %struct.firmware** %4, align 8
  %13 = load %struct.firmware*, %struct.firmware** %4, align 8
  %14 = icmp ne %struct.firmware* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load %struct.firmware*, %struct.firmware** %4, align 8
  %17 = call i64 @IS_ERR(%struct.firmware* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %15, %1
  %20 = load %struct.firmware*, %struct.firmware** %4, align 8
  %21 = call i32 @PTR_ERR(%struct.firmware* %20)
  store i32 %21, i32* %2, align 4
  br label %88

22:                                               ; preds = %15
  %23 = load %struct.nic*, %struct.nic** %3, align 8
  %24 = load %struct.firmware*, %struct.firmware** %4, align 8
  %25 = bitcast %struct.firmware* %24 to i8*
  %26 = load i32, i32* @e100_setup_ucode, align 4
  %27 = call i32 @e100_exec_cb(%struct.nic* %23, i8* %25, i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %22
  %30 = load %struct.nic*, %struct.nic** %3, align 8
  %31 = load i32, i32* @probe, align 4
  %32 = load %struct.nic*, %struct.nic** %3, align 8
  %33 = getelementptr inbounds %struct.nic, %struct.nic* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 (%struct.nic*, i32, i32, i8*, ...) @netif_err(%struct.nic* %30, i32 %31, i32 %34, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %29, %22
  %38 = load i32, i32* @cuc_start, align 4
  %39 = load %struct.nic*, %struct.nic** %3, align 8
  %40 = getelementptr inbounds %struct.nic, %struct.nic* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  %41 = load %struct.nic*, %struct.nic** %3, align 8
  %42 = call i32 @e100_write_flush(%struct.nic* %41)
  %43 = call i32 @udelay(i32 10)
  br label %44

44:                                               ; preds = %59, %37
  %45 = load %struct.cb*, %struct.cb** %7, align 8
  %46 = getelementptr inbounds %struct.cb, %struct.cb* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @cb_complete, align 4
  %49 = call i32 @cpu_to_le16(i32 %48)
  %50 = and i32 %47, %49
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  br i1 %52, label %53, label %60

53:                                               ; preds = %44
  %54 = call i32 @msleep(i32 10)
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %53
  br label %60

59:                                               ; preds = %53
  br label %44

60:                                               ; preds = %58, %44
  %61 = load %struct.nic*, %struct.nic** %3, align 8
  %62 = getelementptr inbounds %struct.nic, %struct.nic* %61, i32 0, i32 1
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = call i32 @iowrite8(i32 -1, i32* %65)
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %60
  %70 = load %struct.cb*, %struct.cb** %7, align 8
  %71 = getelementptr inbounds %struct.cb, %struct.cb* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @cb_ok, align 4
  %74 = call i32 @cpu_to_le16(i32 %73)
  %75 = and i32 %72, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %86, label %77

77:                                               ; preds = %69, %60
  %78 = load %struct.nic*, %struct.nic** %3, align 8
  %79 = load i32, i32* @probe, align 4
  %80 = load %struct.nic*, %struct.nic** %3, align 8
  %81 = getelementptr inbounds %struct.nic, %struct.nic* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 (%struct.nic*, i32, i32, i8*, ...) @netif_err(%struct.nic* %78, i32 %79, i32 %82, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %84 = load i32, i32* @EPERM, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %5, align 4
  br label %86

86:                                               ; preds = %77, %69
  %87 = load i32, i32* %5, align 4
  store i32 %87, i32* %2, align 4
  br label %88

88:                                               ; preds = %86, %19
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local %struct.firmware* @e100_request_firmware(%struct.nic*) #1

declare dso_local i64 @IS_ERR(%struct.firmware*) #1

declare dso_local i32 @PTR_ERR(%struct.firmware*) #1

declare dso_local i32 @e100_exec_cb(%struct.nic*, i8*, i32) #1

declare dso_local i32 @netif_err(%struct.nic*, i32, i32, i8*, ...) #1

declare dso_local i32 @e100_write_flush(%struct.nic*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @iowrite8(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
