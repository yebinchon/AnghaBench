; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_cm.c_nes_reject.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_cm.c_nes_reject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iw_cm_id = type { i64 }
%struct.nes_cm_node = type { i8**, i8*, %struct.TYPE_3__, %struct.iw_cm_id*, %struct.nes_cm_core*, %struct.nes_cm_node* }
%struct.TYPE_3__ = type { i8*, i8* }
%struct.nes_cm_core = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.nes_cm_core*, %struct.nes_cm_node*)* }

@cm_rejects = common dso_local global i32 0, align 4
@MAX_CM_BUFFER = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nes_reject(%struct.iw_cm_id* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iw_cm_id*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.nes_cm_node*, align 8
  %9 = alloca %struct.nes_cm_node*, align 8
  %10 = alloca %struct.nes_cm_core*, align 8
  %11 = alloca i8**, align 8
  store %struct.iw_cm_id* %0, %struct.iw_cm_id** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = call i32 @atomic_inc(i32* @cm_rejects)
  %13 = load %struct.iw_cm_id*, %struct.iw_cm_id** %5, align 8
  %14 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.nes_cm_node*
  store %struct.nes_cm_node* %16, %struct.nes_cm_node** %8, align 8
  %17 = load %struct.nes_cm_node*, %struct.nes_cm_node** %8, align 8
  %18 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %17, i32 0, i32 5
  %19 = load %struct.nes_cm_node*, %struct.nes_cm_node** %18, align 8
  store %struct.nes_cm_node* %19, %struct.nes_cm_node** %9, align 8
  %20 = load %struct.nes_cm_node*, %struct.nes_cm_node** %8, align 8
  %21 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %20, i32 0, i32 4
  %22 = load %struct.nes_cm_core*, %struct.nes_cm_core** %21, align 8
  store %struct.nes_cm_core* %22, %struct.nes_cm_core** %10, align 8
  %23 = load %struct.iw_cm_id*, %struct.iw_cm_id** %5, align 8
  %24 = load %struct.nes_cm_node*, %struct.nes_cm_node** %8, align 8
  %25 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %24, i32 0, i32 3
  store %struct.iw_cm_id* %23, %struct.iw_cm_id** %25, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = getelementptr i8, i8* %26, i64 4
  %28 = load i64, i64* @MAX_CM_BUFFER, align 8
  %29 = inttoptr i64 %28 to i8*
  %30 = icmp ugt i8* %27, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %3
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %73

34:                                               ; preds = %3
  %35 = load %struct.nes_cm_node*, %struct.nes_cm_node** %9, align 8
  %36 = icmp ne %struct.nes_cm_node* %35, null
  br i1 %36, label %37, label %51

37:                                               ; preds = %34
  %38 = load %struct.nes_cm_node*, %struct.nes_cm_node** %9, align 8
  %39 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i8*, i8** %6, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = call i32 @memcpy(i8** %40, i8* %41, i8* %42)
  %44 = load i8*, i8** %7, align 8
  %45 = load %struct.nes_cm_node*, %struct.nes_cm_node** %9, align 8
  %46 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  store i8* %44, i8** %47, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = load %struct.nes_cm_node*, %struct.nes_cm_node** %9, align 8
  %50 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %49, i32 0, i32 1
  store i8* %48, i8** %50, align 8
  br label %64

51:                                               ; preds = %34
  %52 = load %struct.nes_cm_node*, %struct.nes_cm_node** %8, align 8
  %53 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %52, i32 0, i32 0
  %54 = load i8**, i8*** %53, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 0
  %56 = getelementptr inbounds i8*, i8** %55, i64 4
  store i8** %56, i8*** %11, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = load %struct.nes_cm_node*, %struct.nes_cm_node** %8, align 8
  %59 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %58, i32 0, i32 1
  store i8* %57, i8** %59, align 8
  %60 = load i8**, i8*** %11, align 8
  %61 = load i8*, i8** %6, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = call i32 @memcpy(i8** %60, i8* %61, i8* %62)
  br label %64

64:                                               ; preds = %51, %37
  %65 = load %struct.nes_cm_core*, %struct.nes_cm_core** %10, align 8
  %66 = getelementptr inbounds %struct.nes_cm_core, %struct.nes_cm_core* %65, i32 0, i32 0
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32 (%struct.nes_cm_core*, %struct.nes_cm_node*)*, i32 (%struct.nes_cm_core*, %struct.nes_cm_node*)** %68, align 8
  %70 = load %struct.nes_cm_core*, %struct.nes_cm_core** %10, align 8
  %71 = load %struct.nes_cm_node*, %struct.nes_cm_node** %8, align 8
  %72 = call i32 %69(%struct.nes_cm_core* %70, %struct.nes_cm_node* %71)
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %64, %31
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @memcpy(i8**, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
