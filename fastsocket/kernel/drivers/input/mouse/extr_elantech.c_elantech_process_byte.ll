; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_elantech.c_elantech_process_byte.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_elantech.c_elantech_process_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { i64, i64, i32, %struct.elantech_data* }
%struct.elantech_data = type { i32, i32, i32 }

@PSMOUSE_GOOD_DATA = common dso_local global i32 0, align 4
@PSMOUSE_BAD_DATA = common dso_local global i32 0, align 4
@PSMOUSE_FULL_PACKET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*)* @elantech_process_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elantech_process_byte(%struct.psmouse* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.psmouse*, align 8
  %4 = alloca %struct.elantech_data*, align 8
  store %struct.psmouse* %0, %struct.psmouse** %3, align 8
  %5 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %6 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %5, i32 0, i32 3
  %7 = load %struct.elantech_data*, %struct.elantech_data** %6, align 8
  store %struct.elantech_data* %7, %struct.elantech_data** %4, align 8
  %8 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %9 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %12 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp slt i64 %10, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @PSMOUSE_GOOD_DATA, align 4
  store i32 %16, i32* %2, align 4
  br label %53

17:                                               ; preds = %1
  %18 = load %struct.elantech_data*, %struct.elantech_data** %4, align 8
  %19 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp sgt i32 %20, 1
  br i1 %21, label %22, label %30

22:                                               ; preds = %17
  %23 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %24 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %27 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @elantech_packet_dump(i32 %25, i64 %28)
  br label %30

30:                                               ; preds = %22, %17
  %31 = load %struct.elantech_data*, %struct.elantech_data** %4, align 8
  %32 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  switch i32 %33, label %51 [
    i32 1, label %34
    i32 2, label %48
  ]

34:                                               ; preds = %30
  %35 = load %struct.elantech_data*, %struct.elantech_data** %4, align 8
  %36 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %41 = call i32 @elantech_check_parity_v1(%struct.psmouse* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* @PSMOUSE_BAD_DATA, align 4
  store i32 %44, i32* %2, align 4
  br label %53

45:                                               ; preds = %39, %34
  %46 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %47 = call i32 @elantech_report_absolute_v1(%struct.psmouse* %46)
  br label %51

48:                                               ; preds = %30
  %49 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %50 = call i32 @elantech_report_absolute_v2(%struct.psmouse* %49)
  br label %51

51:                                               ; preds = %30, %48, %45
  %52 = load i32, i32* @PSMOUSE_FULL_PACKET, align 4
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %51, %43, %15
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @elantech_packet_dump(i32, i64) #1

declare dso_local i32 @elantech_check_parity_v1(%struct.psmouse*) #1

declare dso_local i32 @elantech_report_absolute_v1(%struct.psmouse*) #1

declare dso_local i32 @elantech_report_absolute_v2(%struct.psmouse*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
