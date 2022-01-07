; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-ioctl.c_check_fmt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-ioctl.c_check_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ioctl_ops = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_ioctl_ops*, i32)* @check_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_fmt(%struct.v4l2_ioctl_ops* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_ioctl_ops*, align 8
  %5 = alloca i32, align 4
  store %struct.v4l2_ioctl_ops* %0, %struct.v4l2_ioctl_ops** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %4, align 8
  %7 = icmp eq %struct.v4l2_ioctl_ops* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %3, align 4
  br label %79

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %76 [
    i32 131, label %13
    i32 128, label %20
    i32 130, label %27
    i32 129, label %34
    i32 133, label %41
    i32 132, label %48
    i32 135, label %55
    i32 134, label %62
    i32 136, label %69
  ]

13:                                               ; preds = %11
  %14 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %4, align 8
  %15 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %14, i32 0, i32 8
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %79

19:                                               ; preds = %13
  br label %76

20:                                               ; preds = %11
  %21 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %4, align 8
  %22 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %21, i32 0, i32 7
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %79

26:                                               ; preds = %20
  br label %76

27:                                               ; preds = %11
  %28 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %4, align 8
  %29 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %79

33:                                               ; preds = %27
  br label %76

34:                                               ; preds = %11
  %35 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %4, align 8
  %36 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %79

40:                                               ; preds = %34
  br label %76

41:                                               ; preds = %11
  %42 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %4, align 8
  %43 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %79

47:                                               ; preds = %41
  br label %76

48:                                               ; preds = %11
  %49 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %4, align 8
  %50 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %79

54:                                               ; preds = %48
  br label %76

55:                                               ; preds = %11
  %56 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %4, align 8
  %57 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  store i32 0, i32* %3, align 4
  br label %79

61:                                               ; preds = %55
  br label %76

62:                                               ; preds = %11
  %63 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %4, align 8
  %64 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  store i32 0, i32* %3, align 4
  br label %79

68:                                               ; preds = %62
  br label %76

69:                                               ; preds = %11
  %70 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %4, align 8
  %71 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  store i32 0, i32* %3, align 4
  br label %79

75:                                               ; preds = %69
  br label %76

76:                                               ; preds = %11, %75, %68, %61, %54, %47, %40, %33, %26, %19
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %76, %74, %67, %60, %53, %46, %39, %32, %25, %18, %8
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
