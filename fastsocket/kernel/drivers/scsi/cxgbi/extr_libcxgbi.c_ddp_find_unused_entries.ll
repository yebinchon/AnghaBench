; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/extr_libcxgbi.c_ddp_find_unused_entries.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/extr_libcxgbi.c_ddp_find_unused_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbi_ddp_info = type { i32, %struct.cxgbi_gather_list** }
%struct.cxgbi_gather_list = type { i32 }

@CXGBI_DBG_DDP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"NOT enough entries %u+%u < %u.\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"NO suitable entries %u available.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxgbi_ddp_info*, i32, i32, i32, %struct.cxgbi_gather_list*)* @ddp_find_unused_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ddp_find_unused_entries(%struct.cxgbi_ddp_info* %0, i32 %1, i32 %2, i32 %3, %struct.cxgbi_gather_list* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cxgbi_ddp_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.cxgbi_gather_list*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.cxgbi_ddp_info* %0, %struct.cxgbi_ddp_info** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.cxgbi_gather_list* %4, %struct.cxgbi_gather_list** %11, align 8
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* %8, align 4
  %17 = sub i32 %15, %16
  %18 = load i32, i32* %10, align 4
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %5
  %21 = load i32, i32* @CXGBI_DBG_DDP, align 4
  %22 = shl i32 1, %21
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i32 (i32, i8*, i32, ...) @log_debug(i32 %22, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %24, i32 %25)
  %27 = load i32, i32* @EBUSY, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %6, align 4
  br label %106

29:                                               ; preds = %5
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %9, align 4
  %32 = sub i32 %31, %30
  store i32 %32, i32* %9, align 4
  %33 = load %struct.cxgbi_ddp_info*, %struct.cxgbi_ddp_info** %7, align 8
  %34 = getelementptr inbounds %struct.cxgbi_ddp_info, %struct.cxgbi_ddp_info* %33, i32 0, i32 0
  %35 = call i32 @spin_lock(i32* %34)
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %12, align 4
  br label %37

37:                                               ; preds = %91, %29
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %41, label %96

41:                                               ; preds = %37
  store i32 0, i32* %13, align 4
  %42 = load i32, i32* %12, align 4
  store i32 %42, i32* %14, align 4
  br label %43

43:                                               ; preds = %58, %41
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp ult i32 %44, %45
  br i1 %46, label %47, label %63

47:                                               ; preds = %43
  %48 = load %struct.cxgbi_ddp_info*, %struct.cxgbi_ddp_info** %7, align 8
  %49 = getelementptr inbounds %struct.cxgbi_ddp_info, %struct.cxgbi_ddp_info* %48, i32 0, i32 1
  %50 = load %struct.cxgbi_gather_list**, %struct.cxgbi_gather_list*** %49, align 8
  %51 = load i32, i32* %14, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.cxgbi_gather_list*, %struct.cxgbi_gather_list** %50, i64 %52
  %54 = load %struct.cxgbi_gather_list*, %struct.cxgbi_gather_list** %53, align 8
  %55 = icmp ne %struct.cxgbi_gather_list* %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %47
  br label %63

57:                                               ; preds = %47
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %13, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %13, align 4
  %61 = load i32, i32* %14, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %14, align 4
  br label %43

63:                                               ; preds = %56, %43
  %64 = load i32, i32* %13, align 4
  %65 = load i32, i32* %10, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %91

67:                                               ; preds = %63
  store i32 0, i32* %13, align 4
  %68 = load i32, i32* %12, align 4
  store i32 %68, i32* %14, align 4
  br label %69

69:                                               ; preds = %81, %67
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp ult i32 %70, %71
  br i1 %72, label %73, label %86

73:                                               ; preds = %69
  %74 = load %struct.cxgbi_gather_list*, %struct.cxgbi_gather_list** %11, align 8
  %75 = load %struct.cxgbi_ddp_info*, %struct.cxgbi_ddp_info** %7, align 8
  %76 = getelementptr inbounds %struct.cxgbi_ddp_info, %struct.cxgbi_ddp_info* %75, i32 0, i32 1
  %77 = load %struct.cxgbi_gather_list**, %struct.cxgbi_gather_list*** %76, align 8
  %78 = load i32, i32* %14, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds %struct.cxgbi_gather_list*, %struct.cxgbi_gather_list** %77, i64 %79
  store %struct.cxgbi_gather_list* %74, %struct.cxgbi_gather_list** %80, align 8
  br label %81

81:                                               ; preds = %73
  %82 = load i32, i32* %13, align 4
  %83 = add i32 %82, 1
  store i32 %83, i32* %13, align 4
  %84 = load i32, i32* %14, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %14, align 4
  br label %69

86:                                               ; preds = %69
  %87 = load %struct.cxgbi_ddp_info*, %struct.cxgbi_ddp_info** %7, align 8
  %88 = getelementptr inbounds %struct.cxgbi_ddp_info, %struct.cxgbi_ddp_info* %87, i32 0, i32 0
  %89 = call i32 @spin_unlock(i32* %88)
  %90 = load i32, i32* %12, align 4
  store i32 %90, i32* %6, align 4
  br label %106

91:                                               ; preds = %63
  %92 = load i32, i32* %13, align 4
  %93 = add i32 %92, 1
  %94 = load i32, i32* %12, align 4
  %95 = add i32 %94, %93
  store i32 %95, i32* %12, align 4
  br label %37

96:                                               ; preds = %37
  %97 = load %struct.cxgbi_ddp_info*, %struct.cxgbi_ddp_info** %7, align 8
  %98 = getelementptr inbounds %struct.cxgbi_ddp_info, %struct.cxgbi_ddp_info* %97, i32 0, i32 0
  %99 = call i32 @spin_unlock(i32* %98)
  %100 = load i32, i32* @CXGBI_DBG_DDP, align 4
  %101 = shl i32 1, %100
  %102 = load i32, i32* %10, align 4
  %103 = call i32 (i32, i8*, i32, ...) @log_debug(i32 %101, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %102)
  %104 = load i32, i32* @EBUSY, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %6, align 4
  br label %106

106:                                              ; preds = %96, %86, %20
  %107 = load i32, i32* %6, align 4
  ret i32 %107
}

declare dso_local i32 @log_debug(i32, i8*, i32, ...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
