; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/extr_gf2k.c_gf2k_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/extr_gf2k.c_gf2k_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gameport = type { i32 }
%struct.gf2k = type { i64, i32, i32, i32 }

@GF2K_LENGTH = common dso_local global i32 0, align 4
@gf2k_length = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gameport*)* @gf2k_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gf2k_poll(%struct.gameport* %0) #0 {
  %2 = alloca %struct.gameport*, align 8
  %3 = alloca %struct.gf2k*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store %struct.gameport* %0, %struct.gameport** %2, align 8
  %6 = load %struct.gameport*, %struct.gameport** %2, align 8
  %7 = call %struct.gf2k* @gameport_get_drvdata(%struct.gameport* %6)
  store %struct.gf2k* %7, %struct.gf2k** %3, align 8
  %8 = load i32, i32* @GF2K_LENGTH, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %4, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %5, align 8
  %12 = load %struct.gf2k*, %struct.gf2k** %3, align 8
  %13 = getelementptr inbounds %struct.gf2k, %struct.gf2k* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %13, align 8
  %16 = load %struct.gf2k*, %struct.gf2k** %3, align 8
  %17 = getelementptr inbounds %struct.gf2k, %struct.gf2k* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load i64*, i64** @gf2k_length, align 8
  %20 = load %struct.gf2k*, %struct.gf2k** %3, align 8
  %21 = getelementptr inbounds %struct.gf2k, %struct.gf2k* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds i64, i64* %19, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = call i64 @gf2k_read_packet(i32 %18, i64 %24, i8* %11)
  %26 = load i64*, i64** @gf2k_length, align 8
  %27 = load %struct.gf2k*, %struct.gf2k** %3, align 8
  %28 = getelementptr inbounds %struct.gf2k, %struct.gf2k* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds i64, i64* %26, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = icmp slt i64 %25, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %1
  %34 = load %struct.gf2k*, %struct.gf2k** %3, align 8
  %35 = getelementptr inbounds %struct.gf2k, %struct.gf2k* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 8
  br label %41

38:                                               ; preds = %1
  %39 = load %struct.gf2k*, %struct.gf2k** %3, align 8
  %40 = call i32 @gf2k_read(%struct.gf2k* %39, i8* %11)
  br label %41

41:                                               ; preds = %38, %33
  %42 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %42)
  ret void
}

declare dso_local %struct.gf2k* @gameport_get_drvdata(%struct.gameport*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @gf2k_read_packet(i32, i64, i8*) #1

declare dso_local i32 @gf2k_read(%struct.gf2k*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
