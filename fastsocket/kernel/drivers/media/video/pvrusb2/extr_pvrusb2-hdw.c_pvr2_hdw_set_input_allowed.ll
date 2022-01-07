; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-hdw.c_pvr2_hdw_set_input_allowed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-hdw.c_pvr2_hdw_set_input_allowed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_hdw = type { i32, i32, i32, i32 }

@EPERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pvr2_hdw_set_input_allowed(%struct.pvr2_hdw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.pvr2_hdw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pvr2_hdw* %0, %struct.pvr2_hdw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %11 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %4, align 8
  %12 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @LOCK_TAKE(i32 %13)
  br label %15

15:                                               ; preds = %3
  %16 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %4, align 8
  %17 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %5, align 4
  %20 = xor i32 %19, -1
  %21 = and i32 %18, %20
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %5, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* %8, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %8, align 4
  %27 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %4, align 8
  %28 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %8, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %15
  %35 = load i32, i32* @EPERM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %7, align 4
  br label %80

37:                                               ; preds = %15
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %4, align 8
  %40 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %4, align 8
  %42 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = shl i32 1, %43
  %45 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %4, align 8
  %46 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %44, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %37
  br label %80

51:                                               ; preds = %37
  %52 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %4, align 8
  %53 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %51
  br label %80

57:                                               ; preds = %51
  %58 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %4, align 8
  %59 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %61

61:                                               ; preds = %76, %57
  %62 = load i32, i32* %10, align 4
  %63 = zext i32 %62 to i64
  %64 = icmp ult i64 %63, 32
  br i1 %64, label %65, label %79

65:                                               ; preds = %61
  %66 = load i32, i32* %10, align 4
  %67 = shl i32 1, %66
  %68 = load i32, i32* %9, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %65
  br label %76

72:                                               ; preds = %65
  %73 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %4, align 8
  %74 = load i32, i32* %10, align 4
  %75 = call i32 @pvr2_hdw_set_input(%struct.pvr2_hdw* %73, i32 %74)
  br label %79

76:                                               ; preds = %71
  %77 = load i32, i32* %10, align 4
  %78 = add i32 %77, 1
  store i32 %78, i32* %10, align 4
  br label %61

79:                                               ; preds = %72, %61
  br label %80

80:                                               ; preds = %79, %56, %50, %34
  %81 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %4, align 8
  %82 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @LOCK_GIVE(i32 %83)
  %85 = load i32, i32* %7, align 4
  ret i32 %85
}

declare dso_local i32 @LOCK_TAKE(i32) #1

declare dso_local i32 @pvr2_hdw_set_input(%struct.pvr2_hdw*, i32) #1

declare dso_local i32 @LOCK_GIVE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
