; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_radio-aimslab.c_rt_setvol.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_radio-aimslab.c_rt_setvol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtrack = type { i32, i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtrack*, i32)* @rt_setvol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt_setvol(%struct.rtrack* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtrack*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rtrack* %0, %struct.rtrack** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.rtrack*, %struct.rtrack** %4, align 8
  %8 = getelementptr inbounds %struct.rtrack, %struct.rtrack* %7, i32 0, i32 1
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.rtrack*, %struct.rtrack** %4, align 8
  %12 = getelementptr inbounds %struct.rtrack, %struct.rtrack* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp eq i32 %10, %13
  br i1 %14, label %15, label %31

15:                                               ; preds = %2
  %16 = load %struct.rtrack*, %struct.rtrack** %4, align 8
  %17 = getelementptr inbounds %struct.rtrack, %struct.rtrack* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %15
  %21 = load %struct.rtrack*, %struct.rtrack** %4, align 8
  %22 = getelementptr inbounds %struct.rtrack, %struct.rtrack* %21, i32 0, i32 2
  store i64 0, i64* %22, align 8
  %23 = load %struct.rtrack*, %struct.rtrack** %4, align 8
  %24 = getelementptr inbounds %struct.rtrack, %struct.rtrack* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @outb(i32 216, i32 %25)
  br label %27

27:                                               ; preds = %20, %15
  %28 = load %struct.rtrack*, %struct.rtrack** %4, align 8
  %29 = getelementptr inbounds %struct.rtrack, %struct.rtrack* %28, i32 0, i32 1
  %30 = call i32 @mutex_unlock(i32* %29)
  store i32 0, i32* %3, align 4
  br label %94

31:                                               ; preds = %2
  %32 = load i32, i32* %5, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %49

34:                                               ; preds = %31
  %35 = load %struct.rtrack*, %struct.rtrack** %4, align 8
  %36 = getelementptr inbounds %struct.rtrack, %struct.rtrack* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @outb(i32 72, i32 %37)
  %39 = call i32 @sleep_delay(i32 2000000)
  %40 = load %struct.rtrack*, %struct.rtrack** %4, align 8
  %41 = getelementptr inbounds %struct.rtrack, %struct.rtrack* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @outb(i32 208, i32 %42)
  %44 = load %struct.rtrack*, %struct.rtrack** %4, align 8
  %45 = getelementptr inbounds %struct.rtrack, %struct.rtrack* %44, i32 0, i32 0
  store i32 0, i32* %45, align 8
  %46 = load %struct.rtrack*, %struct.rtrack** %4, align 8
  %47 = getelementptr inbounds %struct.rtrack, %struct.rtrack* %46, i32 0, i32 1
  %48 = call i32 @mutex_unlock(i32* %47)
  store i32 0, i32* %3, align 4
  br label %94

49:                                               ; preds = %31
  %50 = load %struct.rtrack*, %struct.rtrack** %4, align 8
  %51 = getelementptr inbounds %struct.rtrack, %struct.rtrack* %50, i32 0, i32 2
  store i64 0, i64* %51, align 8
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.rtrack*, %struct.rtrack** %4, align 8
  %54 = getelementptr inbounds %struct.rtrack, %struct.rtrack* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp sgt i32 %52, %55
  br i1 %56, label %57, label %72

57:                                               ; preds = %49
  %58 = load %struct.rtrack*, %struct.rtrack** %4, align 8
  %59 = getelementptr inbounds %struct.rtrack, %struct.rtrack* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %68, %57
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %61
  %66 = load %struct.rtrack*, %struct.rtrack** %4, align 8
  %67 = call i32 @rt_incvol(%struct.rtrack* %66)
  br label %68

68:                                               ; preds = %65
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %6, align 4
  br label %61

71:                                               ; preds = %61
  br label %87

72:                                               ; preds = %49
  %73 = load %struct.rtrack*, %struct.rtrack** %4, align 8
  %74 = getelementptr inbounds %struct.rtrack, %struct.rtrack* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  store i32 %75, i32* %6, align 4
  br label %76

76:                                               ; preds = %83, %72
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* %5, align 4
  %79 = icmp sgt i32 %77, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %76
  %81 = load %struct.rtrack*, %struct.rtrack** %4, align 8
  %82 = call i32 @rt_decvol(%struct.rtrack* %81)
  br label %83

83:                                               ; preds = %80
  %84 = load i32, i32* %6, align 4
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* %6, align 4
  br label %76

86:                                               ; preds = %76
  br label %87

87:                                               ; preds = %86, %71
  %88 = load i32, i32* %5, align 4
  %89 = load %struct.rtrack*, %struct.rtrack** %4, align 8
  %90 = getelementptr inbounds %struct.rtrack, %struct.rtrack* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  %91 = load %struct.rtrack*, %struct.rtrack** %4, align 8
  %92 = getelementptr inbounds %struct.rtrack, %struct.rtrack* %91, i32 0, i32 1
  %93 = call i32 @mutex_unlock(i32* %92)
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %87, %34, %27
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @sleep_delay(i32) #1

declare dso_local i32 @rt_incvol(%struct.rtrack*) #1

declare dso_local i32 @rt_decvol(%struct.rtrack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
