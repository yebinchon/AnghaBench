; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_x25_asy.c_x25_asy_write_wakeup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_x25_asy.c_x25_asy_write_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.TYPE_5__*, i32, %struct.x25_asy* }
%struct.TYPE_5__ = type { i32 (%struct.tty_struct*, i32, i64)* }
%struct.x25_asy = type { i64, i64, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@X25_ASY_MAGIC = common dso_local global i64 0, align 8
@TTY_DO_WRITE_WAKEUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*)* @x25_asy_write_wakeup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @x25_asy_write_wakeup(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.x25_asy*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %5 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %6 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %5, i32 0, i32 2
  %7 = load %struct.x25_asy*, %struct.x25_asy** %6, align 8
  store %struct.x25_asy* %7, %struct.x25_asy** %4, align 8
  %8 = load %struct.x25_asy*, %struct.x25_asy** %4, align 8
  %9 = icmp ne %struct.x25_asy* %8, null
  br i1 %9, label %10, label %22

10:                                               ; preds = %1
  %11 = load %struct.x25_asy*, %struct.x25_asy** %4, align 8
  %12 = getelementptr inbounds %struct.x25_asy, %struct.x25_asy* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @X25_ASY_MAGIC, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %22, label %16

16:                                               ; preds = %10
  %17 = load %struct.x25_asy*, %struct.x25_asy** %4, align 8
  %18 = getelementptr inbounds %struct.x25_asy, %struct.x25_asy* %17, i32 0, i32 3
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = call i32 @netif_running(%struct.TYPE_6__* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %16, %10, %1
  br label %67

23:                                               ; preds = %16
  %24 = load %struct.x25_asy*, %struct.x25_asy** %4, align 8
  %25 = getelementptr inbounds %struct.x25_asy, %struct.x25_asy* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp sle i64 %26, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %23
  %29 = load %struct.x25_asy*, %struct.x25_asy** %4, align 8
  %30 = getelementptr inbounds %struct.x25_asy, %struct.x25_asy* %29, i32 0, i32 3
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  %36 = load i32, i32* @TTY_DO_WRITE_WAKEUP, align 4
  %37 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %38 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %37, i32 0, i32 1
  %39 = call i32 @clear_bit(i32 %36, i32* %38)
  %40 = load %struct.x25_asy*, %struct.x25_asy** %4, align 8
  %41 = call i32 @x25_asy_unlock(%struct.x25_asy* %40)
  br label %67

42:                                               ; preds = %23
  %43 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %44 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %43, i32 0, i32 0
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32 (%struct.tty_struct*, i32, i64)*, i32 (%struct.tty_struct*, i32, i64)** %46, align 8
  %48 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %49 = load %struct.x25_asy*, %struct.x25_asy** %4, align 8
  %50 = getelementptr inbounds %struct.x25_asy, %struct.x25_asy* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.x25_asy*, %struct.x25_asy** %4, align 8
  %53 = getelementptr inbounds %struct.x25_asy, %struct.x25_asy* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = call i32 %47(%struct.tty_struct* %48, i32 %51, i64 %54)
  store i32 %55, i32* %3, align 4
  %56 = load i32, i32* %3, align 4
  %57 = sext i32 %56 to i64
  %58 = load %struct.x25_asy*, %struct.x25_asy** %4, align 8
  %59 = getelementptr inbounds %struct.x25_asy, %struct.x25_asy* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = sub nsw i64 %60, %57
  store i64 %61, i64* %59, align 8
  %62 = load i32, i32* %3, align 4
  %63 = load %struct.x25_asy*, %struct.x25_asy** %4, align 8
  %64 = getelementptr inbounds %struct.x25_asy, %struct.x25_asy* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = add nsw i32 %65, %62
  store i32 %66, i32* %64, align 8
  br label %67

67:                                               ; preds = %42, %28, %22
  ret void
}

declare dso_local i32 @netif_running(%struct.TYPE_6__*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @x25_asy_unlock(%struct.x25_asy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
