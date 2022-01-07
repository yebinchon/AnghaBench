; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_esp.c_rs_put_char.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_esp.c_rs_put_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, %struct.esp_struct* }
%struct.esp_struct = type { i8*, i32, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"rs_put_char\00", align 1
@ESP_XMIT_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, i8)* @rs_put_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs_put_char(%struct.tty_struct* %0, i8 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca i8, align 1
  %6 = alloca %struct.esp_struct*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store i8 %1, i8* %5, align 1
  %9 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %10 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %9, i32 0, i32 1
  %11 = load %struct.esp_struct*, %struct.esp_struct** %10, align 8
  store %struct.esp_struct* %11, %struct.esp_struct** %6, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.esp_struct*, %struct.esp_struct** %6, align 8
  %13 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %14 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @serial_paranoia_check(%struct.esp_struct* %12, i32 %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %63

19:                                               ; preds = %2
  %20 = load %struct.esp_struct*, %struct.esp_struct** %6, align 8
  %21 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %63

25:                                               ; preds = %19
  %26 = load %struct.esp_struct*, %struct.esp_struct** %6, align 8
  %27 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %26, i32 0, i32 3
  %28 = load i64, i64* %7, align 8
  %29 = call i32 @spin_lock_irqsave(i32* %27, i64 %28)
  %30 = load %struct.esp_struct*, %struct.esp_struct** %6, align 8
  %31 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @ESP_XMIT_SIZE, align 4
  %34 = sub nsw i32 %33, 1
  %35 = icmp slt i32 %32, %34
  br i1 %35, label %36, label %57

36:                                               ; preds = %25
  %37 = load i8, i8* %5, align 1
  %38 = load %struct.esp_struct*, %struct.esp_struct** %6, align 8
  %39 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = load %struct.esp_struct*, %struct.esp_struct** %6, align 8
  %42 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 4
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds i8, i8* %40, i64 %45
  store i8 %37, i8* %46, align 1
  %47 = load i32, i32* @ESP_XMIT_SIZE, align 4
  %48 = sub nsw i32 %47, 1
  %49 = load %struct.esp_struct*, %struct.esp_struct** %6, align 8
  %50 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, %48
  store i32 %52, i32* %50, align 4
  %53 = load %struct.esp_struct*, %struct.esp_struct** %6, align 8
  %54 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 8
  store i32 1, i32* %8, align 4
  br label %57

57:                                               ; preds = %36, %25
  %58 = load %struct.esp_struct*, %struct.esp_struct** %6, align 8
  %59 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %58, i32 0, i32 3
  %60 = load i64, i64* %7, align 8
  %61 = call i32 @spin_unlock_irqrestore(i32* %59, i64 %60)
  %62 = load i32, i32* %8, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %57, %24, %18
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i64 @serial_paranoia_check(%struct.esp_struct*, i32, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
