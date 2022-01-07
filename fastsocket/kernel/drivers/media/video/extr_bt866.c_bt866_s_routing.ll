; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_bt866.c_bt866_s_routing.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_bt866.c_bt866_s_routing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.bt866 = type { i32* }

@bt866_s_routing.init = internal constant [108 x i32] [i32 200, i32 204, i32 202, i32 145, i32 204, i32 36, i32 218, i32 0, i32 220, i32 36, i32 222, i32 2, i32 112, i32 235, i32 144, i32 128, i32 176, i32 128, i32 114, i32 162, i32 146, i32 142, i32 178, i32 44, i32 116, i32 131, i32 148, i32 44, i32 180, i32 156, i32 118, i32 112, i32 150, i32 58, i32 182, i32 72, i32 120, i32 84, i32 152, i32 198, i32 184, i32 184, i32 122, i32 65, i32 154, i32 212, i32 186, i32 100, i32 124, i32 35, i32 156, i32 114, i32 188, i32 212, i32 126, i32 16, i32 158, i32 128, i32 190, i32 128, i32 96, i32 235, i32 128, i32 128, i32 192, i32 128, i32 98, i32 162, i32 130, i32 142, i32 194, i32 44, i32 100, i32 131, i32 132, i32 44, i32 196, i32 156, i32 102, i32 112, i32 134, i32 58, i32 198, i32 72, i32 104, i32 84, i32 136, i32 198, i32 200, i32 184, i32 106, i32 65, i32 138, i32 212, i32 202, i32 100, i32 108, i32 35, i32 140, i32 114, i32 204, i32 212, i32 110, i32 16, i32 142, i32 128, i32 206, i32 128], align 16
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"set input %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32, i32, i32)* @bt866_s_routing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bt866_s_routing(%struct.v4l2_subdev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.v4l2_subdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.bt866*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %14 = call %struct.bt866* @to_bt866(%struct.v4l2_subdev* %13)
  store %struct.bt866* %14, %struct.bt866** %10, align 8
  store i32 0, i32* %12, align 4
  br label %15

15:                                               ; preds = %32, %4
  %16 = load i32, i32* %12, align 4
  %17 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([108 x i32], [108 x i32]* @bt866_s_routing.init, i64 0, i64 0))
  %18 = sdiv i32 %17, 2
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %20, label %35

20:                                               ; preds = %15
  %21 = load %struct.bt866*, %struct.bt866** %10, align 8
  %22 = load i32, i32* %12, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [108 x i32], [108 x i32]* @bt866_s_routing.init, i64 0, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %12, align 4
  %27 = add nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [108 x i32], [108 x i32]* @bt866_s_routing.init, i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @bt866_write(%struct.bt866* %21, i32 %25, i32 %30)
  br label %32

32:                                               ; preds = %20
  %33 = load i32, i32* %12, align 4
  %34 = add nsw i32 %33, 2
  store i32 %34, i32* %12, align 4
  br label %15

35:                                               ; preds = %15
  %36 = load %struct.bt866*, %struct.bt866** %10, align 8
  %37 = getelementptr inbounds %struct.bt866, %struct.bt866* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 220
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %35
  %44 = load i32, i32* %11, align 4
  %45 = or i32 %44, 64
  store i32 %45, i32* %11, align 4
  br label %49

46:                                               ; preds = %35
  %47 = load i32, i32* %11, align 4
  %48 = and i32 %47, -65
  store i32 %48, i32* %11, align 4
  br label %49

49:                                               ; preds = %46, %43
  %50 = load %struct.bt866*, %struct.bt866** %10, align 8
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @bt866_write(%struct.bt866* %50, i32 220, i32 %51)
  %53 = load %struct.bt866*, %struct.bt866** %10, align 8
  %54 = getelementptr inbounds %struct.bt866, %struct.bt866* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 204
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp eq i32 %58, 2
  br i1 %59, label %60, label %63

60:                                               ; preds = %49
  %61 = load i32, i32* %11, align 4
  %62 = or i32 %61, 1
  store i32 %62, i32* %11, align 4
  br label %66

63:                                               ; preds = %49
  %64 = load i32, i32* %11, align 4
  %65 = and i32 %64, -2
  store i32 %65, i32* %11, align 4
  br label %66

66:                                               ; preds = %63, %60
  %67 = load %struct.bt866*, %struct.bt866** %10, align 8
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @bt866_write(%struct.bt866* %67, i32 204, i32 %68)
  %70 = load i32, i32* @debug, align 4
  %71 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @v4l2_dbg(i32 1, i32 %70, %struct.v4l2_subdev* %71, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* %7, align 4
  switch i32 %74, label %76 [
    i32 0, label %75
    i32 1, label %75
    i32 2, label %75
  ]

75:                                               ; preds = %66, %66, %66
  br label %79

76:                                               ; preds = %66
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %5, align 4
  br label %80

79:                                               ; preds = %75
  store i32 0, i32* %5, align 4
  br label %80

80:                                               ; preds = %79, %76
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local %struct.bt866* @to_bt866(%struct.v4l2_subdev*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @bt866_write(%struct.bt866*, i32, i32) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
