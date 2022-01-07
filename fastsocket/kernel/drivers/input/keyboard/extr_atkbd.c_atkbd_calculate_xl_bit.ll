; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/keyboard/extr_atkbd.c_atkbd_calculate_xl_bit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/keyboard/extr_atkbd.c_atkbd_calculate_xl_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atkbd = type { i32 }

@xl_table = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atkbd*, i8)* @atkbd_calculate_xl_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atkbd_calculate_xl_bit(%struct.atkbd* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.atkbd*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  store %struct.atkbd* %0, %struct.atkbd** %3, align 8
  store i8 %1, i8* %4, align 1
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %40, %2
  %7 = load i32, i32* %5, align 4
  %8 = load i8*, i8** @xl_table, align 8
  %9 = call i32 @ARRAY_SIZE(i8* %8)
  %10 = icmp slt i32 %7, %9
  br i1 %10, label %11, label %43

11:                                               ; preds = %6
  %12 = load i8, i8* %4, align 1
  %13 = zext i8 %12 to i32
  %14 = load i8*, i8** @xl_table, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %14, i64 %16
  %18 = load i8, i8* %17, align 1
  %19 = zext i8 %18 to i32
  %20 = xor i32 %13, %19
  %21 = and i32 %20, 127
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %39, label %23

23:                                               ; preds = %11
  %24 = load i8, i8* %4, align 1
  %25 = zext i8 %24 to i32
  %26 = and i32 %25, 128
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.atkbd*, %struct.atkbd** %3, align 8
  %31 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %30, i32 0, i32 0
  %32 = call i32 @__clear_bit(i32 %29, i32* %31)
  br label %38

33:                                               ; preds = %23
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.atkbd*, %struct.atkbd** %3, align 8
  %36 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %35, i32 0, i32 0
  %37 = call i32 @__set_bit(i32 %34, i32* %36)
  br label %38

38:                                               ; preds = %33, %28
  br label %43

39:                                               ; preds = %11
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %5, align 4
  br label %6

43:                                               ; preds = %38, %6
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i8*) #1

declare dso_local i32 @__clear_bit(i32, i32*) #1

declare dso_local i32 @__set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
