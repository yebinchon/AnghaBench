; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_ai_range_bits_6xxx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_ai_range_bits_6xxx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_krange = type { i32, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.comedi_krange* }

@.str = private unnamed_addr constant [27 x i8] c"bug! in ai_range_bits_6xxx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, i32)* @ai_range_bits_6xxx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ai_range_bits_6xxx(%struct.comedi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.comedi_krange*, align 8
  %6 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %8 = call %struct.TYPE_4__* @board(%struct.comedi_device* %7)
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.comedi_krange*, %struct.comedi_krange** %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.comedi_krange, %struct.comedi_krange* %12, i64 %14
  store %struct.comedi_krange* %15, %struct.comedi_krange** %5, align 8
  store i32 0, i32* %6, align 4
  %16 = load %struct.comedi_krange*, %struct.comedi_krange** %5, align 8
  %17 = getelementptr inbounds %struct.comedi_krange, %struct.comedi_krange* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %27 [
    i32 10000000, label %19
    i32 5000000, label %20
    i32 2000000, label %21
    i32 2500000, label %21
    i32 1000000, label %22
    i32 1250000, label %22
    i32 500000, label %23
    i32 200000, label %24
    i32 250000, label %24
    i32 100000, label %25
    i32 50000, label %26
  ]

19:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %30

20:                                               ; preds = %2
  store i32 256, i32* %6, align 4
  br label %30

21:                                               ; preds = %2, %2
  store i32 512, i32* %6, align 4
  br label %30

22:                                               ; preds = %2, %2
  store i32 768, i32* %6, align 4
  br label %30

23:                                               ; preds = %2
  store i32 1024, i32* %6, align 4
  br label %30

24:                                               ; preds = %2, %2
  store i32 1280, i32* %6, align 4
  br label %30

25:                                               ; preds = %2
  store i32 1536, i32* %6, align 4
  br label %30

26:                                               ; preds = %2
  store i32 1792, i32* %6, align 4
  br label %30

27:                                               ; preds = %2
  %28 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %29 = call i32 @comedi_error(%struct.comedi_device* %28, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %27, %26, %25, %24, %23, %22, %21, %20, %19
  %31 = load %struct.comedi_krange*, %struct.comedi_krange** %5, align 8
  %32 = getelementptr inbounds %struct.comedi_krange, %struct.comedi_krange* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* %6, align 4
  %37 = add i32 %36, 2304
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %35, %30
  %39 = load i32, i32* %6, align 4
  ret i32 %39
}

declare dso_local %struct.TYPE_4__* @board(%struct.comedi_device*) #1

declare dso_local i32 @comedi_error(%struct.comedi_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
