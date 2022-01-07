; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_emulate.c_emulate_grp2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_emulate.c_emulate_grp2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86_emulate_ctxt = type { i32, %struct.decode_cache }
%struct.decode_cache = type { i32, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"rol\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"ror\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"rcl\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"rcr\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"sal\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"shr\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"sar\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.x86_emulate_ctxt*)* @emulate_grp2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emulate_grp2(%struct.x86_emulate_ctxt* %0) #0 {
  %2 = alloca %struct.x86_emulate_ctxt*, align 8
  %3 = alloca %struct.decode_cache*, align 8
  store %struct.x86_emulate_ctxt* %0, %struct.x86_emulate_ctxt** %2, align 8
  %4 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %2, align 8
  %5 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %4, i32 0, i32 1
  store %struct.decode_cache* %5, %struct.decode_cache** %3, align 8
  %6 = load %struct.decode_cache*, %struct.decode_cache** %3, align 8
  %7 = getelementptr inbounds %struct.decode_cache, %struct.decode_cache* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %86 [
    i32 0, label %9
    i32 1, label %20
    i32 2, label %31
    i32 3, label %42
    i32 4, label %53
    i32 6, label %53
    i32 5, label %64
    i32 7, label %75
  ]

9:                                                ; preds = %1
  %10 = load %struct.decode_cache*, %struct.decode_cache** %3, align 8
  %11 = getelementptr inbounds %struct.decode_cache, %struct.decode_cache* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.decode_cache*, %struct.decode_cache** %3, align 8
  %14 = getelementptr inbounds %struct.decode_cache, %struct.decode_cache* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %2, align 8
  %17 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @emulate_2op_SrcB(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %15, i32 %18)
  br label %86

20:                                               ; preds = %1
  %21 = load %struct.decode_cache*, %struct.decode_cache** %3, align 8
  %22 = getelementptr inbounds %struct.decode_cache, %struct.decode_cache* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.decode_cache*, %struct.decode_cache** %3, align 8
  %25 = getelementptr inbounds %struct.decode_cache, %struct.decode_cache* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %2, align 8
  %28 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @emulate_2op_SrcB(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %23, i32 %26, i32 %29)
  br label %86

31:                                               ; preds = %1
  %32 = load %struct.decode_cache*, %struct.decode_cache** %3, align 8
  %33 = getelementptr inbounds %struct.decode_cache, %struct.decode_cache* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.decode_cache*, %struct.decode_cache** %3, align 8
  %36 = getelementptr inbounds %struct.decode_cache, %struct.decode_cache* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %2, align 8
  %39 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @emulate_2op_SrcB(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %34, i32 %37, i32 %40)
  br label %86

42:                                               ; preds = %1
  %43 = load %struct.decode_cache*, %struct.decode_cache** %3, align 8
  %44 = getelementptr inbounds %struct.decode_cache, %struct.decode_cache* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.decode_cache*, %struct.decode_cache** %3, align 8
  %47 = getelementptr inbounds %struct.decode_cache, %struct.decode_cache* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %2, align 8
  %50 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @emulate_2op_SrcB(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %45, i32 %48, i32 %51)
  br label %86

53:                                               ; preds = %1, %1
  %54 = load %struct.decode_cache*, %struct.decode_cache** %3, align 8
  %55 = getelementptr inbounds %struct.decode_cache, %struct.decode_cache* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.decode_cache*, %struct.decode_cache** %3, align 8
  %58 = getelementptr inbounds %struct.decode_cache, %struct.decode_cache* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %2, align 8
  %61 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @emulate_2op_SrcB(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %56, i32 %59, i32 %62)
  br label %86

64:                                               ; preds = %1
  %65 = load %struct.decode_cache*, %struct.decode_cache** %3, align 8
  %66 = getelementptr inbounds %struct.decode_cache, %struct.decode_cache* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.decode_cache*, %struct.decode_cache** %3, align 8
  %69 = getelementptr inbounds %struct.decode_cache, %struct.decode_cache* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %2, align 8
  %72 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @emulate_2op_SrcB(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %67, i32 %70, i32 %73)
  br label %86

75:                                               ; preds = %1
  %76 = load %struct.decode_cache*, %struct.decode_cache** %3, align 8
  %77 = getelementptr inbounds %struct.decode_cache, %struct.decode_cache* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.decode_cache*, %struct.decode_cache** %3, align 8
  %80 = getelementptr inbounds %struct.decode_cache, %struct.decode_cache* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %2, align 8
  %83 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @emulate_2op_SrcB(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %78, i32 %81, i32 %84)
  br label %86

86:                                               ; preds = %1, %75, %64, %53, %42, %31, %20, %9
  ret void
}

declare dso_local i32 @emulate_2op_SrcB(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
