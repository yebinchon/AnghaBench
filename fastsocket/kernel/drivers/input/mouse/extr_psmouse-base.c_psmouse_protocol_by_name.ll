; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_psmouse-base.c_psmouse_protocol_by_name.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_psmouse-base.c_psmouse_protocol_by_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse_protocol = type { i32, i32 }

@psmouse_protocols = common dso_local global %struct.psmouse_protocol* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.psmouse_protocol* (i8*, i64)* @psmouse_protocol_by_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.psmouse_protocol* @psmouse_protocol_by_name(i8* %0, i64 %1) #0 {
  %3 = alloca %struct.psmouse_protocol*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.psmouse_protocol*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %53, %2
  %9 = load i32, i32* %7, align 4
  %10 = load %struct.psmouse_protocol*, %struct.psmouse_protocol** @psmouse_protocols, align 8
  %11 = call i32 @ARRAY_SIZE(%struct.psmouse_protocol* %10)
  %12 = icmp slt i32 %9, %11
  br i1 %12, label %13, label %56

13:                                               ; preds = %8
  %14 = load %struct.psmouse_protocol*, %struct.psmouse_protocol** @psmouse_protocols, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.psmouse_protocol, %struct.psmouse_protocol* %14, i64 %16
  store %struct.psmouse_protocol* %17, %struct.psmouse_protocol** %6, align 8
  %18 = load %struct.psmouse_protocol*, %struct.psmouse_protocol** %6, align 8
  %19 = getelementptr inbounds %struct.psmouse_protocol, %struct.psmouse_protocol* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @strlen(i32 %20)
  %22 = load i64, i64* %5, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %13
  %25 = load %struct.psmouse_protocol*, %struct.psmouse_protocol** %6, align 8
  %26 = getelementptr inbounds %struct.psmouse_protocol, %struct.psmouse_protocol* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i8*, i8** %4, align 8
  %29 = load i64, i64* %5, align 8
  %30 = call i32 @strncmp(i32 %27, i8* %28, i64 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %24, %13
  %33 = load %struct.psmouse_protocol*, %struct.psmouse_protocol** %6, align 8
  %34 = getelementptr inbounds %struct.psmouse_protocol, %struct.psmouse_protocol* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @strlen(i32 %35)
  %37 = load i64, i64* %5, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %52

39:                                               ; preds = %32
  %40 = load %struct.psmouse_protocol*, %struct.psmouse_protocol** %6, align 8
  %41 = getelementptr inbounds %struct.psmouse_protocol, %struct.psmouse_protocol* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i8*, i8** %4, align 8
  %44 = load i64, i64* %5, align 8
  %45 = call i32 @strncmp(i32 %42, i8* %43, i64 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %39, %24
  %48 = load %struct.psmouse_protocol*, %struct.psmouse_protocol** @psmouse_protocols, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.psmouse_protocol, %struct.psmouse_protocol* %48, i64 %50
  store %struct.psmouse_protocol* %51, %struct.psmouse_protocol** %3, align 8
  br label %57

52:                                               ; preds = %39, %32
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %7, align 4
  br label %8

56:                                               ; preds = %8
  store %struct.psmouse_protocol* null, %struct.psmouse_protocol** %3, align 8
  br label %57

57:                                               ; preds = %56, %47
  %58 = load %struct.psmouse_protocol*, %struct.psmouse_protocol** %3, align 8
  ret %struct.psmouse_protocol* %58
}

declare dso_local i32 @ARRAY_SIZE(%struct.psmouse_protocol*) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @strncmp(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
