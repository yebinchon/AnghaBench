; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclink_gt.c_free_tbuf_count.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclink_gt.c_free_tbuf_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slgt_info = type { i32, i32, i32* }

@TDCSR = common dso_local global i32 0, align 4
@BIT0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.slgt_info*)* @free_tbuf_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @free_tbuf_count(%struct.slgt_info* %0) #0 {
  %2 = alloca %struct.slgt_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.slgt_info* %0, %struct.slgt_info** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %6 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  store i32 %7, i32* %4, align 4
  br label %8

8:                                                ; preds = %30, %1
  %9 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %10 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %9, i32 0, i32 2
  %11 = load i32*, i32** %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @desc_count(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %8
  br label %36

19:                                               ; preds = %8
  %20 = load i32, i32* %3, align 4
  %21 = add i32 %20, 1
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %4, align 4
  %23 = add i32 %22, 1
  store i32 %23, i32* %4, align 4
  %24 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %25 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %29

29:                                               ; preds = %28, %19
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %33 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %31, %34
  br i1 %35, label %8, label %36

36:                                               ; preds = %30, %18
  %37 = load i32, i32* %3, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %36
  %40 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %41 = load i32, i32* @TDCSR, align 4
  %42 = call i32 @rd_reg32(%struct.slgt_info* %40, i32 %41)
  %43 = load i32, i32* @BIT0, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = load i32, i32* %3, align 4
  %48 = add i32 %47, -1
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %46, %39, %36
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i64 @desc_count(i32) #1

declare dso_local i32 @rd_reg32(%struct.slgt_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
