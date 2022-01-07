; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-throttle.c_throtl_dispatch_tg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-throttle.c_throtl_dispatch_tg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.throtl_data = type { i32 }
%struct.throtl_grp = type { i32* }
%struct.bio_list = type { i32 }
%struct.bio = type { i32 }

@throtl_grp_quantum = common dso_local global i32 0, align 4
@READ = common dso_local global i64 0, align 8
@WRITE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.throtl_data*, %struct.throtl_grp*, %struct.bio_list*)* @throtl_dispatch_tg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @throtl_dispatch_tg(%struct.throtl_data* %0, %struct.throtl_grp* %1, %struct.bio_list* %2) #0 {
  %4 = alloca %struct.throtl_data*, align 8
  %5 = alloca %struct.throtl_grp*, align 8
  %6 = alloca %struct.bio_list*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.bio*, align 8
  store %struct.throtl_data* %0, %struct.throtl_data** %4, align 8
  store %struct.throtl_grp* %1, %struct.throtl_grp** %5, align 8
  store %struct.bio_list* %2, %struct.bio_list** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %12 = load i32, i32* @throtl_grp_quantum, align 4
  %13 = mul nsw i32 %12, 3
  %14 = sdiv i32 %13, 4
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* @throtl_grp_quantum, align 4
  %16 = load i32, i32* %7, align 4
  %17 = sub i32 %15, %16
  store i32 %17, i32* %10, align 4
  br label %18

18:                                               ; preds = %47, %3
  %19 = load %struct.throtl_grp*, %struct.throtl_grp** %5, align 8
  %20 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i64, i64* @READ, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = call %struct.bio* @bio_list_peek(i32* %23)
  store %struct.bio* %24, %struct.bio** %11, align 8
  %25 = icmp ne %struct.bio* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %18
  %27 = load %struct.throtl_data*, %struct.throtl_data** %4, align 8
  %28 = load %struct.throtl_grp*, %struct.throtl_grp** %5, align 8
  %29 = load %struct.bio*, %struct.bio** %11, align 8
  %30 = call i64 @tg_may_dispatch(%struct.throtl_data* %27, %struct.throtl_grp* %28, %struct.bio* %29, i32* null)
  %31 = icmp ne i64 %30, 0
  br label %32

32:                                               ; preds = %26, %18
  %33 = phi i1 [ false, %18 ], [ %31, %26 ]
  br i1 %33, label %34, label %48

34:                                               ; preds = %32
  %35 = load %struct.throtl_data*, %struct.throtl_data** %4, align 8
  %36 = load %struct.throtl_grp*, %struct.throtl_grp** %5, align 8
  %37 = load %struct.bio*, %struct.bio** %11, align 8
  %38 = call i32 @bio_data_dir(%struct.bio* %37)
  %39 = load %struct.bio_list*, %struct.bio_list** %6, align 8
  %40 = call i32 @tg_dispatch_one_bio(%struct.throtl_data* %35, %struct.throtl_grp* %36, i32 %38, %struct.bio_list* %39)
  %41 = load i32, i32* %7, align 4
  %42 = add i32 %41, 1
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp uge i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %34
  br label %48

47:                                               ; preds = %34
  br label %18

48:                                               ; preds = %46, %32
  br label %49

49:                                               ; preds = %78, %48
  %50 = load %struct.throtl_grp*, %struct.throtl_grp** %5, align 8
  %51 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i64, i64* @WRITE, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  %55 = call %struct.bio* @bio_list_peek(i32* %54)
  store %struct.bio* %55, %struct.bio** %11, align 8
  %56 = icmp ne %struct.bio* %55, null
  br i1 %56, label %57, label %63

57:                                               ; preds = %49
  %58 = load %struct.throtl_data*, %struct.throtl_data** %4, align 8
  %59 = load %struct.throtl_grp*, %struct.throtl_grp** %5, align 8
  %60 = load %struct.bio*, %struct.bio** %11, align 8
  %61 = call i64 @tg_may_dispatch(%struct.throtl_data* %58, %struct.throtl_grp* %59, %struct.bio* %60, i32* null)
  %62 = icmp ne i64 %61, 0
  br label %63

63:                                               ; preds = %57, %49
  %64 = phi i1 [ false, %49 ], [ %62, %57 ]
  br i1 %64, label %65, label %79

65:                                               ; preds = %63
  %66 = load %struct.throtl_data*, %struct.throtl_data** %4, align 8
  %67 = load %struct.throtl_grp*, %struct.throtl_grp** %5, align 8
  %68 = load %struct.bio*, %struct.bio** %11, align 8
  %69 = call i32 @bio_data_dir(%struct.bio* %68)
  %70 = load %struct.bio_list*, %struct.bio_list** %6, align 8
  %71 = call i32 @tg_dispatch_one_bio(%struct.throtl_data* %66, %struct.throtl_grp* %67, i32 %69, %struct.bio_list* %70)
  %72 = load i32, i32* %8, align 4
  %73 = add i32 %72, 1
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %10, align 4
  %76 = icmp uge i32 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %65
  br label %79

78:                                               ; preds = %65
  br label %49

79:                                               ; preds = %77, %63
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* %8, align 4
  %82 = add i32 %80, %81
  ret i32 %82
}

declare dso_local %struct.bio* @bio_list_peek(i32*) #1

declare dso_local i64 @tg_may_dispatch(%struct.throtl_data*, %struct.throtl_grp*, %struct.bio*, i32*) #1

declare dso_local i32 @tg_dispatch_one_bio(%struct.throtl_data*, %struct.throtl_grp*, i32, %struct.bio_list*) #1

declare dso_local i32 @bio_data_dir(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
