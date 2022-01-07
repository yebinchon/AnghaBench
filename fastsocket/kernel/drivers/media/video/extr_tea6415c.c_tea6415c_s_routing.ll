; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tea6415c.c_tea6415c_s_routing.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tea6415c.c_tea6415c_s_routing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.i2c_client = type { i32 }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"i=%d, o=%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"i2c_smbus_write_byte() failed, ret:%d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32, i32, i32)* @tea6415c_s_routing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tea6415c_s_routing(%struct.v4l2_subdev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.v4l2_subdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.i2c_client*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %14 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %13)
  store %struct.i2c_client* %14, %struct.i2c_client** %10, align 8
  store i32 0, i32* %11, align 4
  %15 = load i32, i32* @debug, align 4
  %16 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call i32 (i32, i32, %struct.v4l2_subdev*, i8*, i32, ...) @v4l2_dbg(i32 1, i32 %15, %struct.v4l2_subdev* %16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18)
  %20 = load i32, i32* %7, align 4
  %21 = icmp eq i32 1, %20
  br i1 %21, label %43, label %22

22:                                               ; preds = %4
  %23 = load i32, i32* %7, align 4
  %24 = icmp eq i32 3, %23
  br i1 %24, label %43, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* %7, align 4
  %27 = icmp eq i32 5, %26
  br i1 %27, label %43, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %7, align 4
  %30 = icmp eq i32 6, %29
  br i1 %30, label %43, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* %7, align 4
  %33 = icmp eq i32 8, %32
  br i1 %33, label %43, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %7, align 4
  %36 = icmp eq i32 10, %35
  br i1 %36, label %43, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %7, align 4
  %39 = icmp eq i32 20, %38
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* %7, align 4
  %42 = icmp eq i32 11, %41
  br i1 %42, label %43, label %63

43:                                               ; preds = %40, %37, %34, %31, %28, %25, %22, %4
  %44 = load i32, i32* %8, align 4
  %45 = icmp eq i32 18, %44
  br i1 %45, label %61, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* %8, align 4
  %48 = icmp eq i32 17, %47
  br i1 %48, label %61, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* %8, align 4
  %51 = icmp eq i32 16, %50
  br i1 %51, label %61, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* %8, align 4
  %54 = icmp eq i32 15, %53
  br i1 %54, label %61, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* %8, align 4
  %57 = icmp eq i32 14, %56
  br i1 %57, label %61, label %58

58:                                               ; preds = %55
  %59 = load i32, i32* %8, align 4
  %60 = icmp eq i32 13, %59
  br label %61

61:                                               ; preds = %58, %55, %52, %49, %46, %43
  %62 = phi i1 [ true, %55 ], [ true, %52 ], [ true, %49 ], [ true, %46 ], [ true, %43 ], [ %60, %58 ]
  br label %63

63:                                               ; preds = %61, %40
  %64 = phi i1 [ false, %40 ], [ %62, %61 ]
  %65 = zext i1 %64 to i32
  %66 = icmp eq i32 0, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %5, align 4
  br label %118

70:                                               ; preds = %63
  %71 = load i32, i32* %8, align 4
  switch i32 %71, label %78 [
    i32 18, label %72
    i32 14, label %73
    i32 16, label %74
    i32 17, label %75
    i32 15, label %76
    i32 13, label %77
  ]

72:                                               ; preds = %70
  store i32 0, i32* %11, align 4
  br label %78

73:                                               ; preds = %70
  store i32 32, i32* %11, align 4
  br label %78

74:                                               ; preds = %70
  store i32 16, i32* %11, align 4
  br label %78

75:                                               ; preds = %70
  store i32 8, i32* %11, align 4
  br label %78

76:                                               ; preds = %70
  store i32 24, i32* %11, align 4
  br label %78

77:                                               ; preds = %70
  store i32 40, i32* %11, align 4
  br label %78

78:                                               ; preds = %70, %77, %76, %75, %74, %73, %72
  %79 = load i32, i32* %7, align 4
  switch i32 %79, label %103 [
    i32 5, label %80
    i32 8, label %82
    i32 3, label %85
    i32 20, label %88
    i32 6, label %91
    i32 10, label %94
    i32 1, label %97
    i32 11, label %100
  ]

80:                                               ; preds = %78
  %81 = load i32, i32* %11, align 4
  store i32 %81, i32* %11, align 4
  br label %103

82:                                               ; preds = %78
  %83 = load i32, i32* %11, align 4
  %84 = or i32 %83, 4
  store i32 %84, i32* %11, align 4
  br label %103

85:                                               ; preds = %78
  %86 = load i32, i32* %11, align 4
  %87 = or i32 %86, 2
  store i32 %87, i32* %11, align 4
  br label %103

88:                                               ; preds = %78
  %89 = load i32, i32* %11, align 4
  %90 = or i32 %89, 6
  store i32 %90, i32* %11, align 4
  br label %103

91:                                               ; preds = %78
  %92 = load i32, i32* %11, align 4
  %93 = or i32 %92, 1
  store i32 %93, i32* %11, align 4
  br label %103

94:                                               ; preds = %78
  %95 = load i32, i32* %11, align 4
  %96 = or i32 %95, 5
  store i32 %96, i32* %11, align 4
  br label %103

97:                                               ; preds = %78
  %98 = load i32, i32* %11, align 4
  %99 = or i32 %98, 3
  store i32 %99, i32* %11, align 4
  br label %103

100:                                              ; preds = %78
  %101 = load i32, i32* %11, align 4
  %102 = or i32 %101, 7
  store i32 %102, i32* %11, align 4
  br label %103

103:                                              ; preds = %78, %100, %97, %94, %91, %88, %85, %82, %80
  %104 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %105 = load i32, i32* %11, align 4
  %106 = call i32 @i2c_smbus_write_byte(%struct.i2c_client* %104, i32 %105)
  store i32 %106, i32* %12, align 4
  %107 = load i32, i32* %12, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %103
  %110 = load i32, i32* @debug, align 4
  %111 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %112 = load i32, i32* %12, align 4
  %113 = call i32 (i32, i32, %struct.v4l2_subdev*, i8*, i32, ...) @v4l2_dbg(i32 1, i32 %110, %struct.v4l2_subdev* %111, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %112)
  %114 = load i32, i32* @EIO, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %5, align 4
  br label %118

116:                                              ; preds = %103
  %117 = load i32, i32* %12, align 4
  store i32 %117, i32* %5, align 4
  br label %118

118:                                              ; preds = %116, %109, %67
  %119 = load i32, i32* %5, align 4
  ret i32 %119
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*, i32, ...) #1

declare dso_local i32 @i2c_smbus_write_byte(%struct.i2c_client*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
