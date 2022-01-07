; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_hvcs.c_hvcs_current_vty_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_hvcs.c_hvcs_current_vty_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.vio_dev = type { i32 }
%struct.hvcs_struct = type { i8*, i32 }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @hvcs_current_vty_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hvcs_current_vty_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.vio_dev*, align 8
  %8 = alloca %struct.hvcs_struct*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.vio_dev* @to_vio_dev(%struct.device* %11)
  store %struct.vio_dev* %12, %struct.vio_dev** %7, align 8
  %13 = load %struct.vio_dev*, %struct.vio_dev** %7, align 8
  %14 = call %struct.hvcs_struct* @from_vio_dev(%struct.vio_dev* %13)
  store %struct.hvcs_struct* %14, %struct.hvcs_struct** %8, align 8
  %15 = load %struct.hvcs_struct*, %struct.hvcs_struct** %8, align 8
  %16 = getelementptr inbounds %struct.hvcs_struct, %struct.hvcs_struct* %15, i32 0, i32 1
  %17 = load i64, i64* %9, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load i8*, i8** %6, align 8
  %20 = load %struct.hvcs_struct*, %struct.hvcs_struct** %8, align 8
  %21 = getelementptr inbounds %struct.hvcs_struct, %struct.hvcs_struct* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = call i32 @sprintf(i8* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %23)
  store i32 %24, i32* %10, align 4
  %25 = load %struct.hvcs_struct*, %struct.hvcs_struct** %8, align 8
  %26 = getelementptr inbounds %struct.hvcs_struct, %struct.hvcs_struct* %25, i32 0, i32 1
  %27 = load i64, i64* %9, align 8
  %28 = call i32 @spin_unlock_irqrestore(i32* %26, i64 %27)
  %29 = load i32, i32* %10, align 4
  ret i32 %29
}

declare dso_local %struct.vio_dev* @to_vio_dev(%struct.device*) #1

declare dso_local %struct.hvcs_struct* @from_vio_dev(%struct.vio_dev*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
