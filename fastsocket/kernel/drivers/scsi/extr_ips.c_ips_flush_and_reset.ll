; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ips.c_ips_flush_and_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ips.c_ips_flush_and_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 (%struct.TYPE_20__*)* }
%struct.TYPE_19__ = type { %struct.TYPE_17__, i8**, i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64, i64, i64, i64, i32, i32, i8* }

@ips_cmd_timeout = common dso_local global i32 0, align 4
@IPS_CMD_FLUSH = common dso_local global i8* null, align 8
@IPS_MAX_CMDS = common dso_local global i32 0, align 4
@IPS_NORM_STATE = common dso_local global i32 0, align 4
@IPS_SUCCESS = common dso_local global i32 0, align 4
@IPS_ONE_SEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_20__*)* @ips_flush_and_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ips_flush_and_reset(%struct.TYPE_20__* %0) #0 {
  %2 = alloca %struct.TYPE_20__*, align 8
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %2, align 8
  %8 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.TYPE_19__* @pci_alloc_consistent(i32 %10, i32 64, i32* %7)
  store %struct.TYPE_19__* %11, %struct.TYPE_19__** %3, align 8
  %12 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %13 = icmp ne %struct.TYPE_19__* %12, null
  br i1 %13, label %14, label %88

14:                                               ; preds = %1
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %16 = call i32 @memset(%struct.TYPE_19__* %15, i32 0, i32 64)
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %19 = call i32 @ips_init_scb(%struct.TYPE_20__* %17, %struct.TYPE_19__* %18)
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @ips_cmd_timeout, align 4
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 8
  %26 = load i8*, i8** @IPS_CMD_FLUSH, align 8
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 1
  %29 = load i8**, i8*** %28, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 0
  store i8* %26, i8** %30, align 8
  %31 = load i8*, i8** @IPS_CMD_FLUSH, align 8
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 6
  store i8* %31, i8** %35, align 8
  %36 = load i32, i32* @IPS_MAX_CMDS, align 4
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 5
  store i32 %36, i32* %40, align 4
  %41 = load i32, i32* @IPS_NORM_STATE, align 4
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 4
  store i32 %41, i32* %45, align 8
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 3
  store i64 0, i64* %49, align 8
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 2
  store i64 0, i64* %53, align 8
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 1
  store i64 0, i64* %57, align 8
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 0
  store i64 0, i64* %61, align 8
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %64 = call i32 @ips_send_cmd(%struct.TYPE_20__* %62, %struct.TYPE_19__* %63)
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @IPS_SUCCESS, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %87

68:                                               ; preds = %14
  %69 = load i32, i32* @IPS_ONE_SEC, align 4
  %70 = mul nsw i32 60, %69
  store i32 %70, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %71

71:                                               ; preds = %80, %68
  %72 = load i32, i32* %5, align 4
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  %75 = load i32, i32* %6, align 4
  %76 = icmp ne i32 %75, 0
  %77 = xor i1 %76, true
  br label %78

78:                                               ; preds = %74, %71
  %79 = phi i1 [ false, %71 ], [ %77, %74 ]
  br i1 %79, label %80, label %86

80:                                               ; preds = %78
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %82 = call i32 @ips_poll_for_flush_complete(%struct.TYPE_20__* %81)
  store i32 %82, i32* %6, align 4
  %83 = call i32 @udelay(i32 1000)
  %84 = load i32, i32* %5, align 4
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* %5, align 4
  br label %71

86:                                               ; preds = %78
  br label %87

87:                                               ; preds = %86, %14
  br label %88

88:                                               ; preds = %87, %1
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 0
  %92 = load i32 (%struct.TYPE_20__*)*, i32 (%struct.TYPE_20__*)** %91, align 8
  %93 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %94 = call i32 %92(%struct.TYPE_20__* %93)
  %95 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @pci_free_consistent(i32 %97, i32 64, %struct.TYPE_19__* %98, i32 %99)
  ret void
}

declare dso_local %struct.TYPE_19__* @pci_alloc_consistent(i32, i32, i32*) #1

declare dso_local i32 @memset(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @ips_init_scb(%struct.TYPE_20__*, %struct.TYPE_19__*) #1

declare dso_local i32 @ips_send_cmd(%struct.TYPE_20__*, %struct.TYPE_19__*) #1

declare dso_local i32 @ips_poll_for_flush_complete(%struct.TYPE_20__*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @pci_free_consistent(i32, i32, %struct.TYPE_19__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
