; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/boot/extr_video.c_restore_screen.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/boot/extr_video.c_restore_screen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32* }
%struct.biosregs = type { i32, i32, i32 }

@boot_params = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@saved = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@graphic_mode = common dso_local global i64 0, align 8
@video_segment = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @restore_screen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @restore_screen() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.biosregs, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @boot_params, i32 0, i32 0, i32 0), align 4
  store i32 %9, i32* %1, align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @boot_params, i32 0, i32 0, i32 1), align 4
  store i32 %10, i32* %2, align 4
  store i32 0, i32* %4, align 4
  %11 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @saved, i32 0, i32 4), align 8
  store i32* %11, i32** %5, align 8
  %12 = load i64, i64* @graphic_mode, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %0
  br label %88

15:                                               ; preds = %0
  %16 = load i32*, i32** %5, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  br label %88

19:                                               ; preds = %15
  %20 = load i32, i32* @video_segment, align 4
  %21 = call i32 @set_fs(i32 %20)
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %77, %19
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* %2, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %80

26:                                               ; preds = %22
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @saved, i32 0, i32 0), align 8
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %68

30:                                               ; preds = %26
  %31 = load i32, i32* %1, align 4
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @saved, i32 0, i32 1), align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* %1, align 4
  br label %38

36:                                               ; preds = %30
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @saved, i32 0, i32 1), align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ]
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %4, align 4
  %41 = load i32*, i32** %5, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = mul i64 %43, 4
  %45 = trunc i64 %44 to i32
  %46 = call i32 @copy_to_fs(i32 %40, i32* %41, i32 %45)
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = mul i64 %48, 4
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = add i64 %51, %49
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @saved, i32 0, i32 1), align 4
  %55 = load i32*, i32** %5, align 8
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  store i32* %57, i32** %5, align 8
  %58 = load i32, i32* %1, align 4
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @saved, i32 0, i32 1), align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %38
  br label %66

62:                                               ; preds = %38
  %63 = load i32, i32* %1, align 4
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @saved, i32 0, i32 1), align 4
  %65 = sub nsw i32 %63, %64
  br label %66

66:                                               ; preds = %62, %61
  %67 = phi i32 [ 0, %61 ], [ %65, %62 ]
  store i32 %67, i32* %7, align 4
  br label %70

68:                                               ; preds = %26
  %69 = load i32, i32* %1, align 4
  store i32 %69, i32* %7, align 4
  br label %70

70:                                               ; preds = %68, %66
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @video_segment, align 4
  %74 = call { i32, i32 } asm sideeffect "pushw %es ; movw $2,%es ; shrw %cx ; jnc 1f ; stosw \0A\091: rep;stosl ; popw %es", "={di},={cx},{bx}{dx}{si},{ax},0,1,~{dirflag},~{fpsr},~{flags}"(i32 %73, i32 119539488, i32 %71, i32 %72) #2, !srcloc !2
  %75 = extractvalue { i32, i32 } %74, 0
  %76 = extractvalue { i32, i32 } %74, 1
  store i32 %75, i32* %4, align 4
  store i32 %76, i32* %7, align 4
  br label %77

77:                                               ; preds = %70
  %78 = load i32, i32* %3, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %3, align 4
  br label %22

80:                                               ; preds = %22
  %81 = call i32 @initregs(%struct.biosregs* %6)
  %82 = getelementptr inbounds %struct.biosregs, %struct.biosregs* %6, i32 0, i32 0
  store i32 2, i32* %82, align 4
  %83 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @saved, i32 0, i32 3), align 4
  %84 = getelementptr inbounds %struct.biosregs, %struct.biosregs* %6, i32 0, i32 2
  store i32 %83, i32* %84, align 4
  %85 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @saved, i32 0, i32 2), align 8
  %86 = getelementptr inbounds %struct.biosregs, %struct.biosregs* %6, i32 0, i32 1
  store i32 %85, i32* %86, align 4
  %87 = call i32 @intcall(i32 16, %struct.biosregs* %6, i32* null)
  br label %88

88:                                               ; preds = %80, %18, %14
  ret void
}

declare dso_local i32 @set_fs(i32) #1

declare dso_local i32 @copy_to_fs(i32, i32*, i32) #1

declare dso_local i32 @initregs(%struct.biosregs*) #1

declare dso_local i32 @intcall(i32, %struct.biosregs*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 1328, i32 1430}
