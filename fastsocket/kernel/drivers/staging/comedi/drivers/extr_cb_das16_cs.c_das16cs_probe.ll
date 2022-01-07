; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_cb_das16_cs.c_das16cs_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_cb_das16_cs.c_das16cs_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.das16cs_board = type { i32 }
%struct.comedi_device = type { i32 }
%struct.pcmcia_device = type { i32 }

@n_boards = common dso_local global i32 0, align 4
@das16cs_boards = common dso_local global %struct.das16cs_board* null, align 8
@.str = private unnamed_addr constant [16 x i8] c"unknown board!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.das16cs_board* (%struct.comedi_device*, %struct.pcmcia_device*)* @das16cs_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.das16cs_board* @das16cs_probe(%struct.comedi_device* %0, %struct.pcmcia_device* %1) #0 {
  %3 = alloca %struct.das16cs_board*, align 8
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.pcmcia_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.pcmcia_device* %1, %struct.pcmcia_device** %5, align 8
  %8 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %9 = load %struct.pcmcia_device*, %struct.pcmcia_device** %5, align 8
  %10 = call i32 @get_prodid(%struct.comedi_device* %8, %struct.pcmcia_device* %9)
  store i32 %10, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %30, %2
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @n_boards, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %33

15:                                               ; preds = %11
  %16 = load %struct.das16cs_board*, %struct.das16cs_board** @das16cs_boards, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.das16cs_board, %struct.das16cs_board* %16, i64 %18
  %20 = getelementptr inbounds %struct.das16cs_board, %struct.das16cs_board* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %15
  %25 = load %struct.das16cs_board*, %struct.das16cs_board** @das16cs_boards, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.das16cs_board, %struct.das16cs_board* %25, i64 %27
  store %struct.das16cs_board* %28, %struct.das16cs_board** %3, align 8
  br label %35

29:                                               ; preds = %15
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %7, align 4
  br label %11

33:                                               ; preds = %11
  %34 = call i32 @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store %struct.das16cs_board* null, %struct.das16cs_board** %3, align 8
  br label %35

35:                                               ; preds = %33, %24
  %36 = load %struct.das16cs_board*, %struct.das16cs_board** %3, align 8
  ret %struct.das16cs_board* %36
}

declare dso_local i32 @get_prodid(%struct.comedi_device*, %struct.pcmcia_device*) #1

declare dso_local i32 @printk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
