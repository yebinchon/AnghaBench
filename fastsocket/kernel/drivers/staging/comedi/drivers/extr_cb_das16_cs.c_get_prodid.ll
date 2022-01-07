; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_cb_das16_cs.c_get_prodid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_cb_das16_cs.c_get_prodid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.pcmcia_device = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i64, i32* }

@CISTPL_MANFID = common dso_local global i32 0, align 4
@TUPLE_RETURN_COMMON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.pcmcia_device*)* @get_prodid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_prodid(%struct.comedi_device* %0, %struct.pcmcia_device* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.pcmcia_device*, align 8
  %5 = alloca %struct.TYPE_4__, align 8
  %6 = alloca [128 x i32], align 16
  %7 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.pcmcia_device* %1, %struct.pcmcia_device** %4, align 8
  store i32 0, i32* %7, align 4
  %8 = getelementptr inbounds [128 x i32], [128 x i32]* %6, i64 0, i64 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 4
  store i32* %8, i32** %9, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 3
  store i64 0, i64* %10, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  store i32 255, i32* %11, align 8
  %12 = load i32, i32* @CISTPL_MANFID, align 4
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 2
  store i32 %12, i32* %13, align 8
  %14 = load i32, i32* @TUPLE_RETURN_COMMON, align 4
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  store i32 %14, i32* %15, align 4
  %16 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %17 = call i64 @pcmcia_get_first_tuple(%struct.pcmcia_device* %16, %struct.TYPE_4__* %5)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %2
  %20 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %21 = call i64 @pcmcia_get_tuple_data(%struct.pcmcia_device* %20, %struct.TYPE_4__* %5)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = getelementptr inbounds [128 x i32], [128 x i32]* %6, i64 0, i64 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @le16_to_cpu(i32 %25)
  store i32 %26, i32* %7, align 4
  br label %27

27:                                               ; preds = %23, %19, %2
  %28 = load i32, i32* %7, align 4
  ret i32 %28
}

declare dso_local i64 @pcmcia_get_first_tuple(%struct.pcmcia_device*, %struct.TYPE_4__*) #1

declare dso_local i64 @pcmcia_get_tuple_data(%struct.pcmcia_device*, %struct.TYPE_4__*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
