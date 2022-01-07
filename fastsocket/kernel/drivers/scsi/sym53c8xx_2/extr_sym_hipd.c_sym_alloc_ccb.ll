; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/sym53c8xx_2/extr_sym_hipd.c_sym_alloc_ccb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/sym53c8xx_2/extr_sym_hipd.c_sym_alloc_ccb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sym_ccb = type { i32, i32, %struct.TYPE_8__, %struct.sym_ccb*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i8* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8*, i8* }
%struct.sym_hcb = type { i64, i32, i32, %struct.sym_ccb** }

@SYM_CONF_MAX_START = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"CCB\00", align 1
@idle = common dso_local global i32 0, align 4
@bad_i_t_l = common dso_local global i32 0, align 4
@msgin = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sym_ccb* (%struct.sym_hcb*)* @sym_alloc_ccb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sym_ccb* @sym_alloc_ccb(%struct.sym_hcb* %0) #0 {
  %2 = alloca %struct.sym_ccb*, align 8
  %3 = alloca %struct.sym_hcb*, align 8
  %4 = alloca %struct.sym_ccb*, align 8
  %5 = alloca i32, align 4
  store %struct.sym_hcb* %0, %struct.sym_hcb** %3, align 8
  store %struct.sym_ccb* null, %struct.sym_ccb** %4, align 8
  %6 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %7 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @SYM_CONF_MAX_START, align 8
  %10 = icmp sge i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store %struct.sym_ccb* null, %struct.sym_ccb** %2, align 8
  br label %87

12:                                               ; preds = %1
  %13 = call %struct.sym_ccb* @sym_calloc_dma(i32 48, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store %struct.sym_ccb* %13, %struct.sym_ccb** %4, align 8
  %14 = load %struct.sym_ccb*, %struct.sym_ccb** %4, align 8
  %15 = icmp ne %struct.sym_ccb* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  br label %80

17:                                               ; preds = %12
  %18 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %19 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, 1
  store i64 %21, i64* %19, align 8
  %22 = load %struct.sym_ccb*, %struct.sym_ccb** %4, align 8
  %23 = call i32 @vtobus(%struct.sym_ccb* %22)
  %24 = load %struct.sym_ccb*, %struct.sym_ccb** %4, align 8
  %25 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %24, i32 0, i32 4
  store i32 %23, i32* %25, align 8
  %26 = load %struct.sym_ccb*, %struct.sym_ccb** %4, align 8
  %27 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @CCB_HASH_CODE(i32 %28)
  store i32 %29, i32* %5, align 4
  %30 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %31 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %30, i32 0, i32 3
  %32 = load %struct.sym_ccb**, %struct.sym_ccb*** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.sym_ccb*, %struct.sym_ccb** %32, i64 %34
  %36 = load %struct.sym_ccb*, %struct.sym_ccb** %35, align 8
  %37 = load %struct.sym_ccb*, %struct.sym_ccb** %4, align 8
  %38 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %37, i32 0, i32 3
  store %struct.sym_ccb* %36, %struct.sym_ccb** %38, align 8
  %39 = load %struct.sym_ccb*, %struct.sym_ccb** %4, align 8
  %40 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %41 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %40, i32 0, i32 3
  %42 = load %struct.sym_ccb**, %struct.sym_ccb*** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.sym_ccb*, %struct.sym_ccb** %42, i64 %44
  store %struct.sym_ccb* %39, %struct.sym_ccb** %45, align 8
  %46 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %47 = load i32, i32* @idle, align 4
  %48 = call i32 @SCRIPTA_BA(%struct.sym_hcb* %46, i32 %47)
  %49 = call i8* @cpu_to_scr(i32 %48)
  %50 = load %struct.sym_ccb*, %struct.sym_ccb** %4, align 8
  %51 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  store i8* %49, i8** %54, align 8
  %55 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %56 = load i32, i32* @bad_i_t_l, align 4
  %57 = call i32 @SCRIPTB_BA(%struct.sym_hcb* %55, i32 %56)
  %58 = call i8* @cpu_to_scr(i32 %57)
  %59 = load %struct.sym_ccb*, %struct.sym_ccb** %4, align 8
  %60 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  store i8* %58, i8** %63, align 8
  %64 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %65 = load i32*, i32** @msgin, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 2
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @HCB_BA(%struct.sym_hcb* %64, i32 %67)
  %69 = call i8* @cpu_to_scr(i32 %68)
  %70 = load %struct.sym_ccb*, %struct.sym_ccb** %4, align 8
  %71 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  store i8* %69, i8** %73, align 8
  %74 = load %struct.sym_ccb*, %struct.sym_ccb** %4, align 8
  %75 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %74, i32 0, i32 1
  %76 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %77 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %76, i32 0, i32 2
  %78 = call i32 @sym_insque_head(i32* %75, i32* %77)
  %79 = load %struct.sym_ccb*, %struct.sym_ccb** %4, align 8
  store %struct.sym_ccb* %79, %struct.sym_ccb** %2, align 8
  br label %87

80:                                               ; preds = %16
  %81 = load %struct.sym_ccb*, %struct.sym_ccb** %4, align 8
  %82 = icmp ne %struct.sym_ccb* %81, null
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load %struct.sym_ccb*, %struct.sym_ccb** %4, align 8
  %85 = call i32 @sym_mfree_dma(%struct.sym_ccb* %84, i32 48, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %86

86:                                               ; preds = %83, %80
  store %struct.sym_ccb* null, %struct.sym_ccb** %2, align 8
  br label %87

87:                                               ; preds = %86, %17, %11
  %88 = load %struct.sym_ccb*, %struct.sym_ccb** %2, align 8
  ret %struct.sym_ccb* %88
}

declare dso_local %struct.sym_ccb* @sym_calloc_dma(i32, i8*) #1

declare dso_local i32 @vtobus(%struct.sym_ccb*) #1

declare dso_local i32 @CCB_HASH_CODE(i32) #1

declare dso_local i8* @cpu_to_scr(i32) #1

declare dso_local i32 @SCRIPTA_BA(%struct.sym_hcb*, i32) #1

declare dso_local i32 @SCRIPTB_BA(%struct.sym_hcb*, i32) #1

declare dso_local i32 @HCB_BA(%struct.sym_hcb*, i32) #1

declare dso_local i32 @sym_insque_head(i32*, i32*) #1

declare dso_local i32 @sym_mfree_dma(%struct.sym_ccb*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
