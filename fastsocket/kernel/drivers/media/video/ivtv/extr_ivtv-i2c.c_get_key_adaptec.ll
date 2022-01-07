; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-i2c.c_get_key_adaptec.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-i2c.c_get_key_adaptec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IR_i2c = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.IR_i2c*, i8*, i8*)* @get_key_adaptec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_key_adaptec(%struct.IR_i2c* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.IR_i2c*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [4 x i8], align 1
  store %struct.IR_i2c* %0, %struct.IR_i2c** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  store i8 0, i8* %9, align 1
  %10 = load %struct.IR_i2c*, %struct.IR_i2c** %5, align 8
  %11 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %14 = call i32 @i2c_master_send(i32 %12, i8* %13, i32 1)
  %15 = load %struct.IR_i2c*, %struct.IR_i2c** %5, align 8
  %16 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %19 = call i32 @i2c_master_recv(i32 %17, i8* %18, i32 4)
  %20 = sext i32 %19 to i64
  %21 = icmp ne i64 %20, 4
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %63

23:                                               ; preds = %3
  %24 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 2
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp eq i32 %26, 255
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %63

29:                                               ; preds = %23
  %30 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 2
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = and i32 %32, 127
  %34 = trunc i32 %33 to i8
  store i8 %34, i8* %30, align 1
  %35 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 3
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = or i32 %37, 128
  %39 = trunc i32 %38 to i8
  store i8 %39, i8* %35, align 1
  %40 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 3
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 2
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i32
  %46 = shl i32 %45, 8
  %47 = or i32 %42, %46
  %48 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 1
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = shl i32 %50, 16
  %52 = or i32 %47, %51
  %53 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = shl i32 %55, 24
  %57 = or i32 %52, %56
  %58 = trunc i32 %57 to i8
  %59 = load i8*, i8** %6, align 8
  store i8 %58, i8* %59, align 1
  %60 = load i8*, i8** %6, align 8
  %61 = load i8, i8* %60, align 1
  %62 = load i8*, i8** %7, align 8
  store i8 %61, i8* %62, align 1
  store i32 1, i32* %4, align 4
  br label %63

63:                                               ; preds = %29, %28, %22
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @i2c_master_send(i32, i8*, i32) #1

declare dso_local i32 @i2c_master_recv(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
