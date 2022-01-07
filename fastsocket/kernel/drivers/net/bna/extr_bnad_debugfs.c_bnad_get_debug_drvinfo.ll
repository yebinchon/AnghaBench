; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bnad_debugfs.c_bnad_get_debug_drvinfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bnad_debugfs.c_bnad_get_debug_drvinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnad = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.bnad_drvinfo = type { i64, i32, i64, i32, i32 }
%struct.bnad_iocmd_comp = type { i64, i32, %struct.bnad* }

@BFA_STATUS_FAILED = common dso_local global i32 0, align 4
@bnad_cb_completion = common dso_local global i32 0, align 4
@BFA_STATUS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnad*, i8*, i32)* @bnad_get_debug_drvinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnad_get_debug_drvinfo(%struct.bnad* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.bnad*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bnad_drvinfo*, align 8
  %8 = alloca %struct.bnad_iocmd_comp, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.bnad* %0, %struct.bnad** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.bnad_drvinfo*
  store %struct.bnad_drvinfo* %12, %struct.bnad_drvinfo** %7, align 8
  store i64 0, i64* %9, align 8
  %13 = load i32, i32* @BFA_STATUS_FAILED, align 4
  store i32 %13, i32* %10, align 4
  %14 = load %struct.bnad*, %struct.bnad** %4, align 8
  %15 = getelementptr inbounds %struct.bnad, %struct.bnad* %14, i32 0, i32 0
  %16 = load i64, i64* %9, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.bnad*, %struct.bnad** %4, align 8
  %19 = getelementptr inbounds %struct.bnad, %struct.bnad* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load %struct.bnad_drvinfo*, %struct.bnad_drvinfo** %7, align 8
  %23 = getelementptr inbounds %struct.bnad_drvinfo, %struct.bnad_drvinfo* %22, i32 0, i32 4
  %24 = call i32 @bfa_nw_ioc_get_attr(i32* %21, i32* %23)
  %25 = load %struct.bnad*, %struct.bnad** %4, align 8
  %26 = getelementptr inbounds %struct.bnad, %struct.bnad* %25, i32 0, i32 0
  %27 = load i64, i64* %9, align 8
  %28 = call i32 @spin_unlock_irqrestore(i32* %26, i64 %27)
  %29 = load %struct.bnad*, %struct.bnad** %4, align 8
  %30 = getelementptr inbounds %struct.bnad_iocmd_comp, %struct.bnad_iocmd_comp* %8, i32 0, i32 2
  store %struct.bnad* %29, %struct.bnad** %30, align 8
  %31 = getelementptr inbounds %struct.bnad_iocmd_comp, %struct.bnad_iocmd_comp* %8, i32 0, i32 0
  store i64 0, i64* %31, align 8
  %32 = getelementptr inbounds %struct.bnad_iocmd_comp, %struct.bnad_iocmd_comp* %8, i32 0, i32 1
  %33 = call i32 @init_completion(i32* %32)
  %34 = load %struct.bnad*, %struct.bnad** %4, align 8
  %35 = getelementptr inbounds %struct.bnad, %struct.bnad* %34, i32 0, i32 0
  %36 = load i64, i64* %9, align 8
  %37 = call i32 @spin_lock_irqsave(i32* %35, i64 %36)
  %38 = load %struct.bnad*, %struct.bnad** %4, align 8
  %39 = getelementptr inbounds %struct.bnad, %struct.bnad* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load %struct.bnad_drvinfo*, %struct.bnad_drvinfo** %7, align 8
  %42 = getelementptr inbounds %struct.bnad_drvinfo, %struct.bnad_drvinfo* %41, i32 0, i32 3
  %43 = load i32, i32* @bnad_cb_completion, align 4
  %44 = call i32 @bfa_nw_cee_get_attr(i32* %40, i32* %42, i32 %43, %struct.bnad_iocmd_comp* %8)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* @BFA_STATUS_OK, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %3
  %49 = load %struct.bnad*, %struct.bnad** %4, align 8
  %50 = getelementptr inbounds %struct.bnad, %struct.bnad* %49, i32 0, i32 0
  %51 = load i64, i64* %9, align 8
  %52 = call i32 @spin_unlock_irqrestore(i32* %50, i64 %51)
  br label %97

53:                                               ; preds = %3
  %54 = load %struct.bnad*, %struct.bnad** %4, align 8
  %55 = getelementptr inbounds %struct.bnad, %struct.bnad* %54, i32 0, i32 0
  %56 = load i64, i64* %9, align 8
  %57 = call i32 @spin_unlock_irqrestore(i32* %55, i64 %56)
  %58 = getelementptr inbounds %struct.bnad_iocmd_comp, %struct.bnad_iocmd_comp* %8, i32 0, i32 1
  %59 = call i32 @wait_for_completion(i32* %58)
  %60 = getelementptr inbounds %struct.bnad_iocmd_comp, %struct.bnad_iocmd_comp* %8, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.bnad_drvinfo*, %struct.bnad_drvinfo** %7, align 8
  %63 = getelementptr inbounds %struct.bnad_drvinfo, %struct.bnad_drvinfo* %62, i32 0, i32 2
  store i64 %61, i64* %63, align 8
  %64 = getelementptr inbounds %struct.bnad_iocmd_comp, %struct.bnad_iocmd_comp* %8, i32 0, i32 0
  store i64 0, i64* %64, align 8
  %65 = getelementptr inbounds %struct.bnad_iocmd_comp, %struct.bnad_iocmd_comp* %8, i32 0, i32 1
  %66 = call i32 @init_completion(i32* %65)
  %67 = load %struct.bnad*, %struct.bnad** %4, align 8
  %68 = getelementptr inbounds %struct.bnad, %struct.bnad* %67, i32 0, i32 0
  %69 = load i64, i64* %9, align 8
  %70 = call i32 @spin_lock_irqsave(i32* %68, i64 %69)
  %71 = load %struct.bnad*, %struct.bnad** %4, align 8
  %72 = getelementptr inbounds %struct.bnad, %struct.bnad* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load %struct.bnad_drvinfo*, %struct.bnad_drvinfo** %7, align 8
  %75 = getelementptr inbounds %struct.bnad_drvinfo, %struct.bnad_drvinfo* %74, i32 0, i32 1
  %76 = load i32, i32* @bnad_cb_completion, align 4
  %77 = call i32 @bfa_nw_flash_get_attr(i32* %73, i32* %75, i32 %76, %struct.bnad_iocmd_comp* %8)
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* @BFA_STATUS_OK, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %86

81:                                               ; preds = %53
  %82 = load %struct.bnad*, %struct.bnad** %4, align 8
  %83 = getelementptr inbounds %struct.bnad, %struct.bnad* %82, i32 0, i32 0
  %84 = load i64, i64* %9, align 8
  %85 = call i32 @spin_unlock_irqrestore(i32* %83, i64 %84)
  br label %97

86:                                               ; preds = %53
  %87 = load %struct.bnad*, %struct.bnad** %4, align 8
  %88 = getelementptr inbounds %struct.bnad, %struct.bnad* %87, i32 0, i32 0
  %89 = load i64, i64* %9, align 8
  %90 = call i32 @spin_unlock_irqrestore(i32* %88, i64 %89)
  %91 = getelementptr inbounds %struct.bnad_iocmd_comp, %struct.bnad_iocmd_comp* %8, i32 0, i32 1
  %92 = call i32 @wait_for_completion(i32* %91)
  %93 = getelementptr inbounds %struct.bnad_iocmd_comp, %struct.bnad_iocmd_comp* %8, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.bnad_drvinfo*, %struct.bnad_drvinfo** %7, align 8
  %96 = getelementptr inbounds %struct.bnad_drvinfo, %struct.bnad_drvinfo* %95, i32 0, i32 0
  store i64 %94, i64* %96, align 8
  br label %97

97:                                               ; preds = %86, %81, %48
  %98 = load i32, i32* %10, align 4
  ret i32 %98
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @bfa_nw_ioc_get_attr(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @bfa_nw_cee_get_attr(i32*, i32*, i32, %struct.bnad_iocmd_comp*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @bfa_nw_flash_get_attr(i32*, i32*, i32, %struct.bnad_iocmd_comp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
