; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/zoran/extr_zoran_device.c_zr36057_adjust_vfe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/zoran/extr_zoran_device.c_zr36057_adjust_vfe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zoran = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ZR36057_VFESPFR_ExtFl = common dso_local global i32 0, align 4
@ZR36057_VFESPFR = common dso_local global i32 0, align 4
@ZR36057_VFEHCR = common dso_local global i32 0, align 4
@LML33R10 = common dso_local global i32 0, align 4
@V4L2_STD_NTSC = common dso_local global i32 0, align 4
@V4L2_STD_PAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zoran*, i32)* @zr36057_adjust_vfe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zr36057_adjust_vfe(%struct.zoran* %0, i32 %1) #0 {
  %3 = alloca %struct.zoran*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.zoran* %0, %struct.zoran** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %32 [
    i32 128, label %7
    i32 129, label %31
    i32 130, label %31
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* @ZR36057_VFESPFR_ExtFl, align 4
  %9 = xor i32 %8, -1
  %10 = load i32, i32* @ZR36057_VFESPFR, align 4
  %11 = call i32 @btand(i32 %9, i32 %10)
  %12 = load i32, i32* @ZR36057_VFEHCR, align 4
  %13 = call i32 @btread(i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = and i32 %14, 1024
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %7
  %18 = load %struct.zoran*, %struct.zoran** %3, align 8
  %19 = getelementptr inbounds %struct.zoran, %struct.zoran* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @LML33R10, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = load i32, i32* %5, align 4
  %26 = add nsw i32 %25, 1025
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %24, %17, %7
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @ZR36057_VFEHCR, align 4
  %30 = call i32 @btwrite(i32 %28, i32 %29)
  br label %82

31:                                               ; preds = %2, %2
  br label %32

32:                                               ; preds = %2, %31
  %33 = load %struct.zoran*, %struct.zoran** %3, align 8
  %34 = getelementptr inbounds %struct.zoran, %struct.zoran* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @V4L2_STD_NTSC, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %53, label %39

39:                                               ; preds = %32
  %40 = load %struct.zoran*, %struct.zoran** %3, align 8
  %41 = getelementptr inbounds %struct.zoran, %struct.zoran* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @LML33R10, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %58

46:                                               ; preds = %39
  %47 = load %struct.zoran*, %struct.zoran** %3, align 8
  %48 = getelementptr inbounds %struct.zoran, %struct.zoran* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @V4L2_STD_PAL, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %46, %32
  %54 = load i32, i32* @ZR36057_VFESPFR_ExtFl, align 4
  %55 = xor i32 %54, -1
  %56 = load i32, i32* @ZR36057_VFESPFR, align 4
  %57 = call i32 @btand(i32 %55, i32 %56)
  br label %62

58:                                               ; preds = %46, %39
  %59 = load i32, i32* @ZR36057_VFESPFR_ExtFl, align 4
  %60 = load i32, i32* @ZR36057_VFESPFR, align 4
  %61 = call i32 @btor(i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %58, %53
  %63 = load i32, i32* @ZR36057_VFEHCR, align 4
  %64 = call i32 @btread(i32 %63)
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = and i32 %65, 1024
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %78, label %68

68:                                               ; preds = %62
  %69 = load %struct.zoran*, %struct.zoran** %3, align 8
  %70 = getelementptr inbounds %struct.zoran, %struct.zoran* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @LML33R10, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %68
  %76 = load i32, i32* %5, align 4
  %77 = sub nsw i32 %76, 1025
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %75, %68, %62
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* @ZR36057_VFEHCR, align 4
  %81 = call i32 @btwrite(i32 %79, i32 %80)
  br label %82

82:                                               ; preds = %78, %27
  ret void
}

declare dso_local i32 @btand(i32, i32) #1

declare dso_local i32 @btread(i32) #1

declare dso_local i32 @btwrite(i32, i32) #1

declare dso_local i32 @btor(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
