; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_alps.c_alps_command_mode_send_nibble.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_alps.c_alps_command_mode_send_nibble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { %struct.alps_data*, %struct.ps2dev }
%struct.alps_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ps2dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*, i32)* @alps_command_mode_send_nibble to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alps_command_mode_send_nibble(%struct.psmouse* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.psmouse*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ps2dev*, align 8
  %7 = alloca %struct.alps_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca [4 x i8], align 1
  store %struct.psmouse* %0, %struct.psmouse** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %12 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %11, i32 0, i32 1
  store %struct.ps2dev* %12, %struct.ps2dev** %6, align 8
  %13 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %14 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %13, i32 0, i32 0
  %15 = load %struct.alps_data*, %struct.alps_data** %14, align 8
  store %struct.alps_data* %15, %struct.alps_data** %7, align 8
  %16 = load i32, i32* %5, align 4
  %17 = icmp sgt i32 %16, 15
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = load %struct.alps_data*, %struct.alps_data** %7, align 8
  %21 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = and i32 %28, 3840
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %2
  %32 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 0
  br label %42

33:                                               ; preds = %2
  %34 = load %struct.alps_data*, %struct.alps_data** %7, align 8
  %35 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = bitcast i32* %40 to i8*
  br label %42

42:                                               ; preds = %33, %31
  %43 = phi i8* [ %32, %31 ], [ %41, %33 ]
  store i8* %43, i8** %9, align 8
  %44 = load %struct.ps2dev*, %struct.ps2dev** %6, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call i64 @ps2_command(%struct.ps2dev* %44, i8* %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  store i32 -1, i32* %3, align 4
  br label %51

50:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %50, %49
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @ps2_command(%struct.ps2dev*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
