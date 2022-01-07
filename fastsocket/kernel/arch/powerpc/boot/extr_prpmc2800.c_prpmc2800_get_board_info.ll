; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/boot/extr_prpmc2800.c_prpmc2800_get_board_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/boot/extr_prpmc2800.c_prpmc2800_get_board_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.prpmc2800_board_info = type { i32, i32, i32, i32 }

@prpmc2800_board_info = common dso_local global %struct.prpmc2800_board_info* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.prpmc2800_board_info* (i32*)* @prpmc2800_get_board_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.prpmc2800_board_info* @prpmc2800_get_board_info(i32* %0) #0 {
  %2 = alloca %struct.prpmc2800_board_info*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.prpmc2800_board_info*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.prpmc2800_board_info*, %struct.prpmc2800_board_info** @prpmc2800_board_info, align 8
  store %struct.prpmc2800_board_info* %6, %struct.prpmc2800_board_info** %4, align 8
  br label %7

7:                                                ; preds = %43, %1
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.prpmc2800_board_info*, %struct.prpmc2800_board_info** @prpmc2800_board_info, align 8
  %10 = call i32 @ARRAY_SIZE(%struct.prpmc2800_board_info* %9)
  %11 = icmp slt i32 %8, %10
  br i1 %11, label %12, label %48

12:                                               ; preds = %7
  %13 = load i32*, i32** %3, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.prpmc2800_board_info*, %struct.prpmc2800_board_info** %4, align 8
  %17 = getelementptr inbounds %struct.prpmc2800_board_info, %struct.prpmc2800_board_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %15, %18
  br i1 %19, label %20, label %42

20:                                               ; preds = %12
  %21 = load i32*, i32** %3, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.prpmc2800_board_info*, %struct.prpmc2800_board_info** %4, align 8
  %25 = getelementptr inbounds %struct.prpmc2800_board_info, %struct.prpmc2800_board_info* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %23, %26
  br i1 %27, label %28, label %42

28:                                               ; preds = %20
  %29 = load i32*, i32** %3, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 4
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.prpmc2800_board_info*, %struct.prpmc2800_board_info** %4, align 8
  %33 = getelementptr inbounds %struct.prpmc2800_board_info, %struct.prpmc2800_board_info* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %31, %34
  %36 = load %struct.prpmc2800_board_info*, %struct.prpmc2800_board_info** %4, align 8
  %37 = getelementptr inbounds %struct.prpmc2800_board_info, %struct.prpmc2800_board_info* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %35, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %28
  %41 = load %struct.prpmc2800_board_info*, %struct.prpmc2800_board_info** %4, align 8
  store %struct.prpmc2800_board_info* %41, %struct.prpmc2800_board_info** %2, align 8
  br label %49

42:                                               ; preds = %28, %20, %12
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %5, align 4
  %46 = load %struct.prpmc2800_board_info*, %struct.prpmc2800_board_info** %4, align 8
  %47 = getelementptr inbounds %struct.prpmc2800_board_info, %struct.prpmc2800_board_info* %46, i32 1
  store %struct.prpmc2800_board_info* %47, %struct.prpmc2800_board_info** %4, align 8
  br label %7

48:                                               ; preds = %7
  store %struct.prpmc2800_board_info* null, %struct.prpmc2800_board_info** %2, align 8
  br label %49

49:                                               ; preds = %48, %40
  %50 = load %struct.prpmc2800_board_info*, %struct.prpmc2800_board_info** %2, align 8
  ret %struct.prpmc2800_board_info* %50
}

declare dso_local i32 @ARRAY_SIZE(%struct.prpmc2800_board_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
