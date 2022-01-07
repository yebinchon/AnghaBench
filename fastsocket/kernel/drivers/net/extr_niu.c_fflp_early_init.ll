; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_fflp_early_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_fflp_early_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { %struct.niu_parent*, i32 }
%struct.niu_parent = type { i32, i64 }

@PARENT_FLGS_CLS_HWINIT = common dso_local global i32 0, align 4
@PROBE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"fflp_early_init: Initting hw on port %u\0A\00", align 1
@PLAT_TYPE_NIU = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"fflp_disable_all_partitions failed, err=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"tcam_early_init failed, err=%d\0A\00", align 1
@H1POLY = common dso_local global i32 0, align 4
@H2POLY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"tcam_flush_all failed, err=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"fflp_hash_clear failed, err=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"fflp_early_init: Success\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.niu*)* @fflp_early_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fflp_early_init(%struct.niu* %0) #0 {
  %2 = alloca %struct.niu*, align 8
  %3 = alloca %struct.niu_parent*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.niu* %0, %struct.niu** %2, align 8
  %6 = load %struct.niu*, %struct.niu** %2, align 8
  %7 = load i64, i64* %4, align 8
  %8 = call i32 @niu_lock_parent(%struct.niu* %6, i64 %7)
  %9 = load %struct.niu*, %struct.niu** %2, align 8
  %10 = getelementptr inbounds %struct.niu, %struct.niu* %9, i32 0, i32 0
  %11 = load %struct.niu_parent*, %struct.niu_parent** %10, align 8
  store %struct.niu_parent* %11, %struct.niu_parent** %3, align 8
  store i32 0, i32* %5, align 4
  %12 = load %struct.niu_parent*, %struct.niu_parent** %3, align 8
  %13 = getelementptr inbounds %struct.niu_parent, %struct.niu_parent* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @PARENT_FLGS_CLS_HWINIT, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %99, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @PROBE, align 4
  %20 = load %struct.niu*, %struct.niu** %2, align 8
  %21 = getelementptr inbounds %struct.niu, %struct.niu* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 (i32, i8*, ...) @niudbg(i32 %19, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.niu*, %struct.niu** %2, align 8
  %25 = getelementptr inbounds %struct.niu, %struct.niu* %24, i32 0, i32 0
  %26 = load %struct.niu_parent*, %struct.niu_parent** %25, align 8
  %27 = getelementptr inbounds %struct.niu_parent, %struct.niu_parent* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @PLAT_TYPE_NIU, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %45

31:                                               ; preds = %18
  %32 = load %struct.niu*, %struct.niu** %2, align 8
  %33 = call i32 @fflp_reset(%struct.niu* %32)
  %34 = load %struct.niu*, %struct.niu** %2, align 8
  %35 = call i32 @fflp_set_timings(%struct.niu* %34)
  %36 = load %struct.niu*, %struct.niu** %2, align 8
  %37 = call i32 @fflp_disable_all_partitions(%struct.niu* %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %31
  %41 = load i32, i32* @PROBE, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 (i32, i8*, ...) @niudbg(i32 %41, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  br label %100

44:                                               ; preds = %31
  br label %45

45:                                               ; preds = %44, %18
  %46 = load %struct.niu*, %struct.niu** %2, align 8
  %47 = call i32 @tcam_early_init(%struct.niu* %46)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load i32, i32* @PROBE, align 4
  %52 = load i32, i32* %5, align 4
  %53 = call i32 (i32, i8*, ...) @niudbg(i32 %51, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  br label %100

54:                                               ; preds = %45
  %55 = load %struct.niu*, %struct.niu** %2, align 8
  %56 = call i32 @fflp_llcsnap_enable(%struct.niu* %55, i32 1)
  %57 = load %struct.niu*, %struct.niu** %2, align 8
  %58 = call i32 @fflp_errors_enable(%struct.niu* %57, i32 0)
  %59 = load i32, i32* @H1POLY, align 4
  %60 = call i32 @nw64(i32 %59, i32 0)
  %61 = load i32, i32* @H2POLY, align 4
  %62 = call i32 @nw64(i32 %61, i32 0)
  %63 = load %struct.niu*, %struct.niu** %2, align 8
  %64 = call i32 @tcam_flush_all(%struct.niu* %63)
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %54
  %68 = load i32, i32* @PROBE, align 4
  %69 = load i32, i32* %5, align 4
  %70 = call i32 (i32, i8*, ...) @niudbg(i32 %68, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %69)
  br label %100

71:                                               ; preds = %54
  %72 = load %struct.niu*, %struct.niu** %2, align 8
  %73 = getelementptr inbounds %struct.niu, %struct.niu* %72, i32 0, i32 0
  %74 = load %struct.niu_parent*, %struct.niu_parent** %73, align 8
  %75 = getelementptr inbounds %struct.niu_parent, %struct.niu_parent* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @PLAT_TYPE_NIU, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %89

79:                                               ; preds = %71
  %80 = load %struct.niu*, %struct.niu** %2, align 8
  %81 = call i32 @fflp_hash_clear(%struct.niu* %80)
  store i32 %81, i32* %5, align 4
  %82 = load i32, i32* %5, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %79
  %85 = load i32, i32* @PROBE, align 4
  %86 = load i32, i32* %5, align 4
  %87 = call i32 (i32, i8*, ...) @niudbg(i32 %85, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %86)
  br label %100

88:                                               ; preds = %79
  br label %89

89:                                               ; preds = %88, %71
  %90 = load %struct.niu*, %struct.niu** %2, align 8
  %91 = call i32 @vlan_tbl_clear(%struct.niu* %90)
  %92 = load i32, i32* @PROBE, align 4
  %93 = call i32 (i32, i8*, ...) @niudbg(i32 %92, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %94 = load i32, i32* @PARENT_FLGS_CLS_HWINIT, align 4
  %95 = load %struct.niu_parent*, %struct.niu_parent** %3, align 8
  %96 = getelementptr inbounds %struct.niu_parent, %struct.niu_parent* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 8
  br label %99

99:                                               ; preds = %89, %1
  br label %100

100:                                              ; preds = %99, %84, %67, %50, %40
  %101 = load %struct.niu*, %struct.niu** %2, align 8
  %102 = load i64, i64* %4, align 8
  %103 = call i32 @niu_unlock_parent(%struct.niu* %101, i64 %102)
  %104 = load i32, i32* %5, align 4
  ret i32 %104
}

declare dso_local i32 @niu_lock_parent(%struct.niu*, i64) #1

declare dso_local i32 @niudbg(i32, i8*, ...) #1

declare dso_local i32 @fflp_reset(%struct.niu*) #1

declare dso_local i32 @fflp_set_timings(%struct.niu*) #1

declare dso_local i32 @fflp_disable_all_partitions(%struct.niu*) #1

declare dso_local i32 @tcam_early_init(%struct.niu*) #1

declare dso_local i32 @fflp_llcsnap_enable(%struct.niu*, i32) #1

declare dso_local i32 @fflp_errors_enable(%struct.niu*, i32) #1

declare dso_local i32 @nw64(i32, i32) #1

declare dso_local i32 @tcam_flush_all(%struct.niu*) #1

declare dso_local i32 @fflp_hash_clear(%struct.niu*) #1

declare dso_local i32 @vlan_tbl_clear(%struct.niu*) #1

declare dso_local i32 @niu_unlock_parent(%struct.niu*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
