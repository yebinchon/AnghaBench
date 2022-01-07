; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_istallion.c_stli_putchar.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_istallion.c_stli_putchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32 }

@stli_txcooktty = common dso_local global %struct.tty_struct* null, align 8
@stli_txcookbuf = common dso_local global i8* null, align 8
@stli_txcooksize = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, i8)* @stli_putchar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stli_putchar(%struct.tty_struct* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca i8, align 1
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store i8 %1, i8* %4, align 1
  %5 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %6 = load %struct.tty_struct*, %struct.tty_struct** @stli_txcooktty, align 8
  %7 = icmp ne %struct.tty_struct* %5, %6
  br i1 %7, label %8, label %16

8:                                                ; preds = %2
  %9 = load %struct.tty_struct*, %struct.tty_struct** @stli_txcooktty, align 8
  %10 = icmp ne %struct.tty_struct* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = load %struct.tty_struct*, %struct.tty_struct** @stli_txcooktty, align 8
  %13 = call i32 @stli_flushchars(%struct.tty_struct* %12)
  br label %14

14:                                               ; preds = %11, %8
  %15 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  store %struct.tty_struct* %15, %struct.tty_struct** @stli_txcooktty, align 8
  br label %16

16:                                               ; preds = %14, %2
  %17 = load i8, i8* %4, align 1
  %18 = load i8*, i8** @stli_txcookbuf, align 8
  %19 = load i32, i32* @stli_txcooksize, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* @stli_txcooksize, align 4
  %21 = sext i32 %19 to i64
  %22 = getelementptr inbounds i8, i8* %18, i64 %21
  store i8 %17, i8* %22, align 1
  ret i32 0
}

declare dso_local i32 @stli_flushchars(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
