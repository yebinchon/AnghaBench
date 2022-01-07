; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-input.c_get_key_hvr1110.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-input.c_get_key_hvr1110.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IR_i2c = type { i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.IR_i2c*, i8*, i8*)* @get_key_hvr1110 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_key_hvr1110(%struct.IR_i2c* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.IR_i2c*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [5 x i8], align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  store %struct.IR_i2c* %0, %struct.IR_i2c** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.IR_i2c*, %struct.IR_i2c** %5, align 8
  %13 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 0
  %16 = call i32 @i2c_master_recv(i32 %14, i8* %15, i32 5)
  %17 = icmp ne i32 5, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EIO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %39

21:                                               ; preds = %3
  %22 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 4
  %23 = load i8, i8* %22, align 1
  store i8 %23, i8* %9, align 1
  %24 = load i8, i8* %9, align 1
  %25 = zext i8 %24 to i32
  %26 = ashr i32 %25, 2
  %27 = trunc i32 %26 to i8
  store i8 %27, i8* %11, align 1
  %28 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 3
  %29 = load i8, i8* %28, align 1
  store i8 %29, i8* %10, align 1
  %30 = load i8, i8* %10, align 1
  %31 = zext i8 %30 to i32
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %39

34:                                               ; preds = %21
  %35 = load i8, i8* %11, align 1
  %36 = load i8*, i8** %6, align 8
  store i8 %35, i8* %36, align 1
  %37 = load i8, i8* %11, align 1
  %38 = load i8*, i8** %7, align 8
  store i8 %37, i8* %38, align 1
  store i32 1, i32* %4, align 4
  br label %39

39:                                               ; preds = %34, %33, %18
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i32 @i2c_master_recv(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
