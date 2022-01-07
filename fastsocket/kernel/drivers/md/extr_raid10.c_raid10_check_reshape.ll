; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid10.c_raid10_check_reshape.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid10.c_raid10_check_reshape.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i32, i32, i32, %struct.r10conf* }
%struct.r10conf = type { i64, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.geom = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@geo_start = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mddev*)* @raid10_check_reshape to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raid10_check_reshape(%struct.mddev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mddev*, align 8
  %4 = alloca %struct.r10conf*, align 8
  %5 = alloca %struct.geom, align 4
  store %struct.mddev* %0, %struct.mddev** %3, align 8
  %6 = load %struct.mddev*, %struct.mddev** %3, align 8
  %7 = getelementptr inbounds %struct.mddev, %struct.mddev* %6, i32 0, i32 3
  %8 = load %struct.r10conf*, %struct.r10conf** %7, align 8
  store %struct.r10conf* %8, %struct.r10conf** %4, align 8
  %9 = load %struct.r10conf*, %struct.r10conf** %4, align 8
  %10 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 1
  br i1 %13, label %14, label %23

14:                                               ; preds = %1
  %15 = load %struct.r10conf*, %struct.r10conf** %4, align 8
  %16 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %14
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %98

23:                                               ; preds = %14, %1
  %24 = load %struct.mddev*, %struct.mddev** %3, align 8
  %25 = load i32, i32* @geo_start, align 4
  %26 = call i64 @setup_geo(%struct.geom* %5, %struct.mddev* %24, i32 %25)
  %27 = load %struct.r10conf*, %struct.r10conf** %4, align 8
  %28 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %26, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %23
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %98

34:                                               ; preds = %23
  %35 = getelementptr inbounds %struct.geom, %struct.geom* %5, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp sgt i32 %36, 1
  br i1 %37, label %38, label %45

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.geom, %struct.geom* %5, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %98

45:                                               ; preds = %38, %34
  %46 = load %struct.mddev*, %struct.mddev** %3, align 8
  %47 = getelementptr inbounds %struct.mddev, %struct.mddev* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = getelementptr inbounds %struct.geom, %struct.geom* %5, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %48, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %45
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %98

56:                                               ; preds = %45
  %57 = load %struct.r10conf*, %struct.r10conf** %4, align 8
  %58 = call i32 @enough(%struct.r10conf* %57, i32 -1)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %56
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %98

63:                                               ; preds = %56
  %64 = load %struct.r10conf*, %struct.r10conf** %4, align 8
  %65 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 @kfree(i32* %66)
  %68 = load %struct.r10conf*, %struct.r10conf** %4, align 8
  %69 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %68, i32 0, i32 1
  store i32* null, i32** %69, align 8
  %70 = load %struct.mddev*, %struct.mddev** %3, align 8
  %71 = getelementptr inbounds %struct.mddev, %struct.mddev* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %97

74:                                               ; preds = %63
  %75 = load %struct.mddev*, %struct.mddev** %3, align 8
  %76 = getelementptr inbounds %struct.mddev, %struct.mddev* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.mddev*, %struct.mddev** %3, align 8
  %79 = getelementptr inbounds %struct.mddev, %struct.mddev* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %77, %80
  %82 = sext i32 %81 to i64
  %83 = mul i64 4, %82
  %84 = trunc i64 %83 to i32
  %85 = load i32, i32* @GFP_KERNEL, align 4
  %86 = call i32* @kzalloc(i32 %84, i32 %85)
  %87 = load %struct.r10conf*, %struct.r10conf** %4, align 8
  %88 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %87, i32 0, i32 1
  store i32* %86, i32** %88, align 8
  %89 = load %struct.r10conf*, %struct.r10conf** %4, align 8
  %90 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %96, label %93

93:                                               ; preds = %74
  %94 = load i32, i32* @ENOMEM, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %2, align 4
  br label %98

96:                                               ; preds = %74
  br label %97

97:                                               ; preds = %96, %63
  store i32 0, i32* %2, align 4
  br label %98

98:                                               ; preds = %97, %93, %60, %53, %42, %31, %20
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i64 @setup_geo(%struct.geom*, %struct.mddev*, i32) #1

declare dso_local i32 @enough(%struct.r10conf*, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
