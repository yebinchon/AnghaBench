; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cpia_pp.c_ReverseSetup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cpia_pp.c_ReverseSetup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_cam_entry = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@IEEE1284_MODE_ECP = common dso_local global i32 0, align 4
@ECP_TRANSFER = common dso_local global i32 0, align 4
@PARPORT_MODE_ECP = common dso_local global i32 0, align 4
@PARPORT_MODE_TRISTATE = common dso_local global i32 0, align 4
@IEEE1284_MODE_NIBBLE = common dso_local global i32 0, align 4
@NIBBLE_TRANSFER = common dso_local global i32 0, align 4
@UPLOAD_FLAG = common dso_local global i32 0, align 4
@IEEE1284_EXT_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Unable to negotiate upload extensibility mode\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Unable to negotiate upload mode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_cam_entry*, i32)* @ReverseSetup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ReverseSetup(%struct.pp_cam_entry* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pp_cam_entry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pp_cam_entry* %0, %struct.pp_cam_entry** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* @IEEE1284_MODE_ECP, align 4
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* @ECP_TRANSFER, align 4
  store i32 %11, i32* %9, align 4
  %12 = load %struct.pp_cam_entry*, %struct.pp_cam_entry** %4, align 8
  %13 = getelementptr inbounds %struct.pp_cam_entry, %struct.pp_cam_entry* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @PARPORT_MODE_ECP, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %32, label %20

20:                                               ; preds = %2
  %21 = load %struct.pp_cam_entry*, %struct.pp_cam_entry** %4, align 8
  %22 = getelementptr inbounds %struct.pp_cam_entry, %struct.pp_cam_entry* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @PARPORT_MODE_TRISTATE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %20
  %30 = load i32, i32* @IEEE1284_MODE_NIBBLE, align 4
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* @NIBBLE_TRANSFER, align 4
  store i32 %31, i32* %9, align 4
  br label %32

32:                                               ; preds = %29, %20, %2
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  %37 = load i32, i32* @UPLOAD_FLAG, align 4
  %38 = load i32, i32* %9, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @IEEE1284_EXT_LINK, align 4
  %41 = or i32 %39, %40
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %36, %32
  store i32 0, i32* %6, align 4
  br label %43

43:                                               ; preds = %56, %42
  %44 = load i32, i32* %6, align 4
  %45 = icmp slt i32 %44, 4
  br i1 %45, label %46, label %59

46:                                               ; preds = %43
  %47 = load %struct.pp_cam_entry*, %struct.pp_cam_entry** %4, align 8
  %48 = getelementptr inbounds %struct.pp_cam_entry, %struct.pp_cam_entry* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @parport_negotiate(%struct.TYPE_4__* %49, i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %46
  br label %59

54:                                               ; preds = %46
  %55 = call i32 @mdelay(i32 10)
  br label %56

56:                                               ; preds = %54
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %6, align 4
  br label %43

59:                                               ; preds = %53, %43
  %60 = load i32, i32* %6, align 4
  %61 = icmp eq i32 %60, 4
  br i1 %61, label %62, label %70

62:                                               ; preds = %59
  %63 = load i32, i32* %5, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = call i32 @DBG(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %69

67:                                               ; preds = %62
  %68 = call i32 @DBG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %69

69:                                               ; preds = %67, %65
  store i32 -1, i32* %3, align 4
  br label %81

70:                                               ; preds = %59
  %71 = load i32, i32* %5, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %70
  %74 = load i32, i32* %7, align 4
  %75 = load %struct.pp_cam_entry*, %struct.pp_cam_entry** %4, align 8
  %76 = getelementptr inbounds %struct.pp_cam_entry, %struct.pp_cam_entry* %75, i32 0, i32 0
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  store i32 %74, i32* %79, align 4
  br label %80

80:                                               ; preds = %73, %70
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %80, %69
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @parport_negotiate(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @DBG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
