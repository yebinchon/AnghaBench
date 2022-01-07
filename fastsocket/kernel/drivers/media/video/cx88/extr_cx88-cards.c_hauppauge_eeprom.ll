; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-cards.c_hauppauge_eeprom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-cards.c_hauppauge_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx88_core = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.tveeprom = type { i32, i64, i32, i32 }

@CX88_RADIO = common dso_local global i32 0, align 4
@MO_GP0_IO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"warning: unknown hauppauge model #%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"hauppauge eeprom: model=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cx88_core*, i32*)* @hauppauge_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hauppauge_eeprom(%struct.cx88_core* %0, i32* %1) #0 {
  %3 = alloca %struct.cx88_core*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.tveeprom, align 8
  store %struct.cx88_core* %0, %struct.cx88_core** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %7 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %6, i32 0, i32 2
  %8 = load i32*, i32** %4, align 8
  %9 = call i32 @tveeprom_hauppauge_analog(i32* %7, %struct.tveeprom* %5, i32* %8)
  %10 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %5, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %13 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  store i32 %11, i32* %14, align 4
  %15 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %5, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %18 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %5, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* @CX88_RADIO, align 4
  br label %25

24:                                               ; preds = %2
  br label %25

25:                                               ; preds = %24, %22
  %26 = phi i32 [ %23, %22 ], [ 0, %24 ]
  %27 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %28 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store i32 %26, i32* %30, align 4
  %31 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %5, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  switch i32 %32, label %37 [
    i32 14009, label %33
    i32 14019, label %33
    i32 14029, label %33
    i32 14109, label %33
    i32 14129, label %33
    i32 14559, label %33
    i32 14569, label %33
    i32 14659, label %33
    i32 14669, label %33
    i32 28552, label %33
    i32 34519, label %33
    i32 69009, label %33
    i32 69100, label %33
    i32 69500, label %33
    i32 69559, label %33
    i32 69569, label %33
    i32 90002, label %33
    i32 92001, label %33
    i32 92002, label %33
    i32 90003, label %33
    i32 90500, label %33
    i32 90501, label %33
    i32 92000, label %33
    i32 92900, label %33
    i32 94009, label %33
    i32 94501, label %33
    i32 96009, label %33
    i32 96019, label %33
    i32 96559, label %33
    i32 96569, label %33
    i32 96659, label %33
    i32 98559, label %33
    i32 128, label %34
  ]

33:                                               ; preds = %25, %25, %25, %25, %25, %25, %25, %25, %25, %25, %25, %25, %25, %25, %25, %25, %25, %25, %25, %25, %25, %25, %25, %25, %25, %25, %25, %25, %25, %25, %25, %25
  br label %42

34:                                               ; preds = %25
  %35 = load i32, i32* @MO_GP0_IO, align 4
  %36 = call i32 @cx_set(i32 %35, i32 9013759)
  br label %42

37:                                               ; preds = %25
  %38 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %39 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %5, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @warn_printk(%struct.cx88_core* %38, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %37, %34, %33
  %43 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %44 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %5, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @info_printk(%struct.cx88_core* %43, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  ret void
}

declare dso_local i32 @tveeprom_hauppauge_analog(i32*, %struct.tveeprom*, i32*) #1

declare dso_local i32 @cx_set(i32, i32) #1

declare dso_local i32 @warn_printk(%struct.cx88_core*, i8*, i32) #1

declare dso_local i32 @info_printk(%struct.cx88_core*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
