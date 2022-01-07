; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/extr_a3d.c_a3d_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/extr_a3d.c_a3d_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gameport = type { i32 }
%struct.a3d = type { i64, i8, i32, i32, i32 }

@A3D_MAX_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gameport*)* @a3d_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @a3d_poll(%struct.gameport* %0) #0 {
  %2 = alloca %struct.gameport*, align 8
  %3 = alloca %struct.a3d*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store %struct.gameport* %0, %struct.gameport** %2, align 8
  %6 = load %struct.gameport*, %struct.gameport** %2, align 8
  %7 = call %struct.a3d* @gameport_get_drvdata(%struct.gameport* %6)
  store %struct.a3d* %7, %struct.a3d** %3, align 8
  %8 = load i32, i32* @A3D_MAX_LENGTH, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %4, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %5, align 8
  %12 = load %struct.a3d*, %struct.a3d** %3, align 8
  %13 = getelementptr inbounds %struct.a3d, %struct.a3d* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %13, align 4
  %16 = load %struct.a3d*, %struct.a3d** %3, align 8
  %17 = getelementptr inbounds %struct.a3d, %struct.a3d* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.a3d*, %struct.a3d** %3, align 8
  %20 = getelementptr inbounds %struct.a3d, %struct.a3d* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i64 @a3d_read_packet(i32 %18, i64 %21, i8* %11)
  %23 = load %struct.a3d*, %struct.a3d** %3, align 8
  %24 = getelementptr inbounds %struct.a3d, %struct.a3d* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %22, %25
  br i1 %26, label %42, label %27

27:                                               ; preds = %1
  %28 = getelementptr inbounds i8, i8* %11, i64 0
  %29 = load i8, i8* %28, align 16
  %30 = zext i8 %29 to i32
  %31 = load %struct.a3d*, %struct.a3d** %3, align 8
  %32 = getelementptr inbounds %struct.a3d, %struct.a3d* %31, i32 0, i32 1
  %33 = load i8, i8* %32, align 8
  %34 = zext i8 %33 to i32
  %35 = icmp ne i32 %30, %34
  br i1 %35, label %42, label %36

36:                                               ; preds = %27
  %37 = load %struct.a3d*, %struct.a3d** %3, align 8
  %38 = getelementptr inbounds %struct.a3d, %struct.a3d* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i64 @a3d_csum(i8* %11, i64 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %36, %27, %1
  %43 = load %struct.a3d*, %struct.a3d** %3, align 8
  %44 = getelementptr inbounds %struct.a3d, %struct.a3d* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 4
  br label %50

47:                                               ; preds = %36
  %48 = load %struct.a3d*, %struct.a3d** %3, align 8
  %49 = call i32 @a3d_read(%struct.a3d* %48, i8* %11)
  br label %50

50:                                               ; preds = %47, %42
  %51 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %51)
  ret void
}

declare dso_local %struct.a3d* @gameport_get_drvdata(%struct.gameport*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @a3d_read_packet(i32, i64, i8*) #1

declare dso_local i64 @a3d_csum(i8*, i64) #1

declare dso_local i32 @a3d_read(%struct.a3d*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
