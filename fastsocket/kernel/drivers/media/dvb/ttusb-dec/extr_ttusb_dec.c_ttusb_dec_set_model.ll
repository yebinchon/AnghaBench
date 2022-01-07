; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttusb-dec/extr_ttusb_dec.c_ttusb_dec_set_model.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttusb-dec/extr_ttusb_dec.c_ttusb_dec_set_model.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttusb_dec = type { i32, i8*, i8* }

@.str = private unnamed_addr constant [10 x i8] c"DEC2000-t\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"dvb-ttusb-dec-2000t.fw\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"DEC2540-t\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"dvb-ttusb-dec-2540t.fw\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"DEC3000-s\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"dvb-ttusb-dec-3000s.fw\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ttusb_dec*, i32)* @ttusb_dec_set_model to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ttusb_dec_set_model(%struct.ttusb_dec* %0, i32 %1) #0 {
  %3 = alloca %struct.ttusb_dec*, align 8
  %4 = alloca i32, align 4
  store %struct.ttusb_dec* %0, %struct.ttusb_dec** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.ttusb_dec*, %struct.ttusb_dec** %3, align 8
  %7 = getelementptr inbounds %struct.ttusb_dec, %struct.ttusb_dec* %6, i32 0, i32 0
  store i32 %5, i32* %7, align 8
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %24 [
    i32 130, label %9
    i32 129, label %14
    i32 128, label %19
  ]

9:                                                ; preds = %2
  %10 = load %struct.ttusb_dec*, %struct.ttusb_dec** %3, align 8
  %11 = getelementptr inbounds %struct.ttusb_dec, %struct.ttusb_dec* %10, i32 0, i32 1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  %12 = load %struct.ttusb_dec*, %struct.ttusb_dec** %3, align 8
  %13 = getelementptr inbounds %struct.ttusb_dec, %struct.ttusb_dec* %12, i32 0, i32 2
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8** %13, align 8
  br label %24

14:                                               ; preds = %2
  %15 = load %struct.ttusb_dec*, %struct.ttusb_dec** %3, align 8
  %16 = getelementptr inbounds %struct.ttusb_dec, %struct.ttusb_dec* %15, i32 0, i32 1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %16, align 8
  %17 = load %struct.ttusb_dec*, %struct.ttusb_dec** %3, align 8
  %18 = getelementptr inbounds %struct.ttusb_dec, %struct.ttusb_dec* %17, i32 0, i32 2
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8** %18, align 8
  br label %24

19:                                               ; preds = %2
  %20 = load %struct.ttusb_dec*, %struct.ttusb_dec** %3, align 8
  %21 = getelementptr inbounds %struct.ttusb_dec, %struct.ttusb_dec* %20, i32 0, i32 1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8** %21, align 8
  %22 = load %struct.ttusb_dec*, %struct.ttusb_dec** %3, align 8
  %23 = getelementptr inbounds %struct.ttusb_dec, %struct.ttusb_dec* %22, i32 0, i32 2
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i8** %23, align 8
  br label %24

24:                                               ; preds = %2, %19, %14, %9
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
