; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_stripe_zero_pl_part.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_stripe_zero_pl_part.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stripe = type { i32 }
%struct.page_list = type { %struct.page_list*, i32 }

@SECTORS_PER_PAGE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stripe*, i32, i32, i32)* @stripe_zero_pl_part to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stripe_zero_pl_part(%struct.stripe* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.stripe*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.page_list*, align 8
  store %struct.stripe* %0, %struct.stripe** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @SECTORS_PER_PAGE, align 4
  %14 = udiv i32 %12, %13
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @chunk_pages(i32 %15)
  store i32 %16, i32* %10, align 4
  %17 = load %struct.stripe*, %struct.stripe** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @PL(%struct.stripe* %17, i32 %18)
  %20 = load i32, i32* %9, align 4
  %21 = call %struct.page_list* @pl_elem(i32 %19, i32 %20)
  store %struct.page_list* %21, %struct.page_list** %11, align 8
  %22 = load %struct.page_list*, %struct.page_list** %11, align 8
  %23 = icmp ne %struct.page_list* %22, null
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 @BUG_ON(i32 %25)
  br label %27

27:                                               ; preds = %36, %4
  %28 = load %struct.page_list*, %struct.page_list** %11, align 8
  %29 = icmp ne %struct.page_list* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load i32, i32* %10, align 4
  %32 = add i32 %31, -1
  store i32 %32, i32* %10, align 4
  %33 = icmp ne i32 %31, 0
  br label %34

34:                                               ; preds = %30, %27
  %35 = phi i1 [ false, %27 ], [ %33, %30 ]
  br i1 %35, label %36, label %53

36:                                               ; preds = %34
  %37 = load %struct.page_list*, %struct.page_list** %11, align 8
  %38 = getelementptr inbounds %struct.page_list, %struct.page_list* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i32 @BUG_ON(i32 %42)
  %44 = load %struct.page_list*, %struct.page_list** %11, align 8
  %45 = getelementptr inbounds %struct.page_list, %struct.page_list* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @page_address(i32 %46)
  %48 = load i32, i32* @PAGE_SIZE, align 4
  %49 = call i32 @memset(i32 %47, i32 0, i32 %48)
  %50 = load %struct.page_list*, %struct.page_list** %11, align 8
  %51 = getelementptr inbounds %struct.page_list, %struct.page_list* %50, i32 0, i32 0
  %52 = load %struct.page_list*, %struct.page_list** %51, align 8
  store %struct.page_list* %52, %struct.page_list** %11, align 8
  br label %27

53:                                               ; preds = %34
  ret void
}

declare dso_local i32 @chunk_pages(i32) #1

declare dso_local %struct.page_list* @pl_elem(i32, i32) #1

declare dso_local i32 @PL(%struct.stripe*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @page_address(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
