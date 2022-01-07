; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid5.c_handle_active_stripes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid5.c_handle_active_stripes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r5conf = type { i32 }
%struct.stripe_head = type { i32 }

@MAX_STRIPE_BATCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.r5conf*)* @handle_active_stripes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_active_stripes(%struct.r5conf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.r5conf*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.stripe_head*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.r5conf* %0, %struct.r5conf** %3, align 8
  %10 = load i32, i32* @MAX_STRIPE_BATCH, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %4, align 8
  %13 = alloca %struct.stripe_head*, i64 %11, align 16
  store i64 %11, i64* %5, align 8
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %24, %1
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @MAX_STRIPE_BATCH, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %20 = call %struct.stripe_head* @__get_priority_stripe(%struct.r5conf* %19)
  store %struct.stripe_head* %20, %struct.stripe_head** %6, align 8
  %21 = icmp ne %struct.stripe_head* %20, null
  br label %22

22:                                               ; preds = %18, %14
  %23 = phi i1 [ false, %14 ], [ %21, %18 ]
  br i1 %23, label %24, label %30

24:                                               ; preds = %22
  %25 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %26 = load i32, i32* %8, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %8, align 4
  %28 = sext i32 %26 to i64
  %29 = getelementptr inbounds %struct.stripe_head*, %struct.stripe_head** %13, i64 %28
  store %struct.stripe_head* %25, %struct.stripe_head** %29, align 8
  br label %14

30:                                               ; preds = %22
  %31 = load i32, i32* %8, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %73

35:                                               ; preds = %30
  %36 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %37 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %36, i32 0, i32 0
  %38 = call i32 @spin_unlock_irq(i32* %37)
  store i32 0, i32* %7, align 4
  br label %39

39:                                               ; preds = %49, %35
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %39
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.stripe_head*, %struct.stripe_head** %13, i64 %45
  %47 = load %struct.stripe_head*, %struct.stripe_head** %46, align 8
  %48 = call i32 @handle_stripe(%struct.stripe_head* %47)
  br label %49

49:                                               ; preds = %43
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %7, align 4
  br label %39

52:                                               ; preds = %39
  %53 = call i32 (...) @cond_resched()
  %54 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %55 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %54, i32 0, i32 0
  %56 = call i32 @spin_lock_irq(i32* %55)
  store i32 0, i32* %7, align 4
  br label %57

57:                                               ; preds = %68, %52
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %71

61:                                               ; preds = %57
  %62 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.stripe_head*, %struct.stripe_head** %13, i64 %64
  %66 = load %struct.stripe_head*, %struct.stripe_head** %65, align 8
  %67 = call i32 @__release_stripe(%struct.r5conf* %62, %struct.stripe_head* %66)
  br label %68

68:                                               ; preds = %61
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %7, align 4
  br label %57

71:                                               ; preds = %57
  %72 = load i32, i32* %8, align 4
  store i32 %72, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %73

73:                                               ; preds = %71, %33
  %74 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %74)
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.stripe_head* @__get_priority_stripe(%struct.r5conf*) #2

declare dso_local i32 @spin_unlock_irq(i32*) #2

declare dso_local i32 @handle_stripe(%struct.stripe_head*) #2

declare dso_local i32 @cond_resched(...) #2

declare dso_local i32 @spin_lock_irq(i32*) #2

declare dso_local i32 @__release_stripe(%struct.r5conf*, %struct.stripe_head*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
