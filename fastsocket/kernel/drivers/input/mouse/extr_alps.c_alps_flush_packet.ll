; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_alps.c_alps_flush_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_alps.c_alps_flush_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { i64, i64, i32*, %struct.TYPE_2__, %struct.alps_data* }
%struct.TYPE_2__ = type { i32 }
%struct.alps_data = type { i32 (%struct.psmouse*)* }

@.str = private unnamed_addr constant [55 x i8] c"refusing packet %x %x %x (suspected interleaved ps/2)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @alps_flush_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alps_flush_packet(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.psmouse*, align 8
  %4 = alloca %struct.alps_data*, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to %struct.psmouse*
  store %struct.psmouse* %6, %struct.psmouse** %3, align 8
  %7 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %8 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %7, i32 0, i32 4
  %9 = load %struct.alps_data*, %struct.alps_data** %8, align 8
  store %struct.alps_data* %9, %struct.alps_data** %4, align 8
  %10 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %11 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @serio_pause_rx(i32 %13)
  %15 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %16 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %19 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %17, %20
  br i1 %21, label %22, label %68

22:                                               ; preds = %1
  %23 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %24 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 3
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %29 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 4
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %27, %32
  %34 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %35 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 5
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %33, %38
  %40 = and i32 %39, 128
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %59

42:                                               ; preds = %22
  %43 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %44 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 3
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %49 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 4
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %54 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 5
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @dbg(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %52, i32 %57)
  br label %65

59:                                               ; preds = %22
  %60 = load %struct.alps_data*, %struct.alps_data** %4, align 8
  %61 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %60, i32 0, i32 0
  %62 = load i32 (%struct.psmouse*)*, i32 (%struct.psmouse*)** %61, align 8
  %63 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %64 = call i32 %62(%struct.psmouse* %63)
  br label %65

65:                                               ; preds = %59, %42
  %66 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %67 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %66, i32 0, i32 0
  store i64 0, i64* %67, align 8
  br label %68

68:                                               ; preds = %65, %1
  %69 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %70 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @serio_continue_rx(i32 %72)
  ret void
}

declare dso_local i32 @serio_pause_rx(i32) #1

declare dso_local i32 @dbg(i8*, i32, i32, i32) #1

declare dso_local i32 @serio_continue_rx(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
