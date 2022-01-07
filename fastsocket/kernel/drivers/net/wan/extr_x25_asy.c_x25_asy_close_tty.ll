; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_x25_asy.c_x25_asy_close_tty.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_x25_asy.c_x25_asy_close_tty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.x25_asy* }
%struct.x25_asy = type { i64, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@X25_ASY_MAGIC = common dso_local global i64 0, align 8
@IFF_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*)* @x25_asy_close_tty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @x25_asy_close_tty(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca %struct.x25_asy*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %4 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %5 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %4, i32 0, i32 0
  %6 = load %struct.x25_asy*, %struct.x25_asy** %5, align 8
  store %struct.x25_asy* %6, %struct.x25_asy** %3, align 8
  %7 = load %struct.x25_asy*, %struct.x25_asy** %3, align 8
  %8 = icmp ne %struct.x25_asy* %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct.x25_asy*, %struct.x25_asy** %3, align 8
  %11 = getelementptr inbounds %struct.x25_asy, %struct.x25_asy* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @X25_ASY_MAGIC, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %9, %1
  br label %39

16:                                               ; preds = %9
  %17 = call i32 (...) @rtnl_lock()
  %18 = load %struct.x25_asy*, %struct.x25_asy** %3, align 8
  %19 = getelementptr inbounds %struct.x25_asy, %struct.x25_asy* %18, i32 0, i32 2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @IFF_UP, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %16
  %27 = load %struct.x25_asy*, %struct.x25_asy** %3, align 8
  %28 = getelementptr inbounds %struct.x25_asy, %struct.x25_asy* %27, i32 0, i32 2
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = call i32 @dev_close(%struct.TYPE_2__* %29)
  br label %31

31:                                               ; preds = %26, %16
  %32 = call i32 (...) @rtnl_unlock()
  %33 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %34 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %33, i32 0, i32 0
  store %struct.x25_asy* null, %struct.x25_asy** %34, align 8
  %35 = load %struct.x25_asy*, %struct.x25_asy** %3, align 8
  %36 = getelementptr inbounds %struct.x25_asy, %struct.x25_asy* %35, i32 0, i32 1
  store i32* null, i32** %36, align 8
  %37 = load %struct.x25_asy*, %struct.x25_asy** %3, align 8
  %38 = call i32 @x25_asy_free(%struct.x25_asy* %37)
  br label %39

39:                                               ; preds = %31, %15
  ret void
}

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @dev_close(%struct.TYPE_2__*) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @x25_asy_free(%struct.x25_asy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
