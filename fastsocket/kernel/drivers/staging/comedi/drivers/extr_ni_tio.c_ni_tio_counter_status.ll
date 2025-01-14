; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_tio.c_ni_tio_counter_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_tio.c_ni_tio_counter_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ni_gpct = type { i32 }

@COMEDI_COUNTER_ARMED = common dso_local global i32 0, align 4
@COMEDI_COUNTER_COUNTING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ni_gpct*)* @ni_tio_counter_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_tio_counter_status(%struct.ni_gpct* %0) #0 {
  %2 = alloca %struct.ni_gpct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ni_gpct* %0, %struct.ni_gpct** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.ni_gpct*, %struct.ni_gpct** %2, align 8
  %6 = load %struct.ni_gpct*, %struct.ni_gpct** %2, align 8
  %7 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @NITIO_Gxx_Status_Reg(i32 %8)
  %10 = call i32 @read_register(%struct.ni_gpct* %5, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.ni_gpct*, %struct.ni_gpct** %2, align 8
  %13 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @Gi_Armed_Bit(i32 %14)
  %16 = and i32 %11, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %34

18:                                               ; preds = %1
  %19 = load i32, i32* @COMEDI_COUNTER_ARMED, align 4
  %20 = load i32, i32* %3, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.ni_gpct*, %struct.ni_gpct** %2, align 8
  %24 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @Gi_Counting_Bit(i32 %25)
  %27 = and i32 %22, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %18
  %30 = load i32, i32* @COMEDI_COUNTER_COUNTING, align 4
  %31 = load i32, i32* %3, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %29, %18
  br label %34

34:                                               ; preds = %33, %1
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @read_register(%struct.ni_gpct*, i32) #1

declare dso_local i32 @NITIO_Gxx_Status_Reg(i32) #1

declare dso_local i32 @Gi_Armed_Bit(i32) #1

declare dso_local i32 @Gi_Counting_Bit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
