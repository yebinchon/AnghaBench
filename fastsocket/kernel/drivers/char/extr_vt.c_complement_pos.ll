; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_vt.c_complement_pos.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_vt.c_complement_pos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i32, i16, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.vc_data*, i16, i16, i16)* }

@complement_pos.old_offset = internal global i32 -1, align 4
@complement_pos.old = internal global i16 0, align 2
@complement_pos.oldx = internal global i16 0, align 2
@complement_pos.oldy = internal global i16 0, align 2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @complement_pos(%struct.vc_data* %0, i32 %1) #0 {
  %3 = alloca %struct.vc_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i16*, align 8
  store %struct.vc_data* %0, %struct.vc_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = call i32 (...) @WARN_CONSOLE_UNLOCKED()
  %8 = load i32, i32* @complement_pos.old_offset, align 4
  %9 = icmp ne i32 %8, -1
  br i1 %9, label %10, label %40

10:                                               ; preds = %2
  %11 = load i32, i32* @complement_pos.old_offset, align 4
  %12 = icmp sge i32 %11, 0
  br i1 %12, label %13, label %40

13:                                               ; preds = %10
  %14 = load i32, i32* @complement_pos.old_offset, align 4
  %15 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %16 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %40

19:                                               ; preds = %13
  %20 = load i16, i16* @complement_pos.old, align 2
  %21 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %22 = load i32, i32* @complement_pos.old_offset, align 4
  %23 = call i16* @screenpos(%struct.vc_data* %21, i32 %22, i32 1)
  %24 = call i32 @scr_writew(i16 zeroext %20, i16* %23)
  %25 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %26 = call i64 @DO_UPDATE(%struct.vc_data* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %19
  %29 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %30 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %29, i32 0, i32 3
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32 (%struct.vc_data*, i16, i16, i16)*, i32 (%struct.vc_data*, i16, i16, i16)** %32, align 8
  %34 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %35 = load i16, i16* @complement_pos.old, align 2
  %36 = load i16, i16* @complement_pos.oldy, align 2
  %37 = load i16, i16* @complement_pos.oldx, align 2
  %38 = call i32 %33(%struct.vc_data* %34, i16 zeroext %35, i16 zeroext %36, i16 zeroext %37)
  br label %39

39:                                               ; preds = %28, %19
  br label %40

40:                                               ; preds = %39, %13, %10, %2
  %41 = load i32, i32* %4, align 4
  store i32 %41, i32* @complement_pos.old_offset, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, -1
  br i1 %43, label %44, label %99

44:                                               ; preds = %40
  %45 = load i32, i32* %4, align 4
  %46 = icmp sge i32 %45, 0
  br i1 %46, label %47, label %99

47:                                               ; preds = %44
  %48 = load i32, i32* %4, align 4
  %49 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %50 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %99

53:                                               ; preds = %47
  %54 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %55 = load i32, i32* %4, align 4
  %56 = call i16* @screenpos(%struct.vc_data* %54, i32 %55, i32 1)
  store i16* %56, i16** %6, align 8
  %57 = load i16*, i16** %6, align 8
  %58 = call zeroext i16 @scr_readw(i16* %57)
  store i16 %58, i16* @complement_pos.old, align 2
  %59 = load i16, i16* @complement_pos.old, align 2
  %60 = zext i16 %59 to i32
  %61 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %62 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %61, i32 0, i32 1
  %63 = load i16, i16* %62, align 4
  %64 = zext i16 %63 to i32
  %65 = xor i32 %60, %64
  %66 = trunc i32 %65 to i16
  store i16 %66, i16* %5, align 2
  %67 = load i16, i16* %5, align 2
  %68 = load i16*, i16** %6, align 8
  %69 = call i32 @scr_writew(i16 zeroext %67, i16* %68)
  %70 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %71 = call i64 @DO_UPDATE(%struct.vc_data* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %98

73:                                               ; preds = %53
  %74 = load i32, i32* %4, align 4
  %75 = ashr i32 %74, 1
  %76 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %77 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = srem i32 %75, %78
  %80 = trunc i32 %79 to i16
  store i16 %80, i16* @complement_pos.oldx, align 2
  %81 = load i32, i32* %4, align 4
  %82 = ashr i32 %81, 1
  %83 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %84 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = sdiv i32 %82, %85
  %87 = trunc i32 %86 to i16
  store i16 %87, i16* @complement_pos.oldy, align 2
  %88 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %89 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %88, i32 0, i32 3
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32 (%struct.vc_data*, i16, i16, i16)*, i32 (%struct.vc_data*, i16, i16, i16)** %91, align 8
  %93 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %94 = load i16, i16* %5, align 2
  %95 = load i16, i16* @complement_pos.oldy, align 2
  %96 = load i16, i16* @complement_pos.oldx, align 2
  %97 = call i32 %92(%struct.vc_data* %93, i16 zeroext %94, i16 zeroext %95, i16 zeroext %96)
  br label %98

98:                                               ; preds = %73, %53
  br label %99

99:                                               ; preds = %98, %47, %44, %40
  ret void
}

declare dso_local i32 @WARN_CONSOLE_UNLOCKED(...) #1

declare dso_local i32 @scr_writew(i16 zeroext, i16*) #1

declare dso_local i16* @screenpos(%struct.vc_data*, i32, i32) #1

declare dso_local i64 @DO_UPDATE(%struct.vc_data*) #1

declare dso_local zeroext i16 @scr_readw(i16*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
