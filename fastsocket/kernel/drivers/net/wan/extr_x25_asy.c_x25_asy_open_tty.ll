; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_x25_asy.c_x25_asy_open_tty.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_x25_asy.c_x25_asy_open_tty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, %struct.x25_asy*, %struct.TYPE_3__* }
%struct.x25_asy = type { i64, %struct.TYPE_4__*, %struct.tty_struct* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32* }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@X25_ASY_MAGIC = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i32 0, align 4
@ENFILE = common dso_local global i32 0, align 4
@ARPHRD_X25 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*)* @x25_asy_open_tty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x25_asy_open_tty(%struct.tty_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.x25_asy*, align 8
  %5 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  %6 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %7 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %6, i32 0, i32 1
  %8 = load %struct.x25_asy*, %struct.x25_asy** %7, align 8
  store %struct.x25_asy* %8, %struct.x25_asy** %4, align 8
  %9 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %10 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %9, i32 0, i32 2
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @EOPNOTSUPP, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %69

18:                                               ; preds = %1
  %19 = load %struct.x25_asy*, %struct.x25_asy** %4, align 8
  %20 = icmp ne %struct.x25_asy* %19, null
  br i1 %20, label %21, label %30

21:                                               ; preds = %18
  %22 = load %struct.x25_asy*, %struct.x25_asy** %4, align 8
  %23 = getelementptr inbounds %struct.x25_asy, %struct.x25_asy* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @X25_ASY_MAGIC, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i32, i32* @EEXIST, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %69

30:                                               ; preds = %21, %18
  %31 = call %struct.x25_asy* (...) @x25_asy_alloc()
  store %struct.x25_asy* %31, %struct.x25_asy** %4, align 8
  %32 = load %struct.x25_asy*, %struct.x25_asy** %4, align 8
  %33 = icmp eq %struct.x25_asy* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* @ENFILE, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %69

37:                                               ; preds = %30
  %38 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %39 = load %struct.x25_asy*, %struct.x25_asy** %4, align 8
  %40 = getelementptr inbounds %struct.x25_asy, %struct.x25_asy* %39, i32 0, i32 2
  store %struct.tty_struct* %38, %struct.tty_struct** %40, align 8
  %41 = load %struct.x25_asy*, %struct.x25_asy** %4, align 8
  %42 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %43 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %42, i32 0, i32 1
  store %struct.x25_asy* %41, %struct.x25_asy** %43, align 8
  %44 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %45 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %44, i32 0, i32 0
  store i32 65536, i32* %45, align 8
  %46 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %47 = call i32 @tty_driver_flush_buffer(%struct.tty_struct* %46)
  %48 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %49 = call i32 @tty_ldisc_flush(%struct.tty_struct* %48)
  %50 = load i32, i32* @ARPHRD_X25, align 4
  %51 = load %struct.x25_asy*, %struct.x25_asy** %4, align 8
  %52 = getelementptr inbounds %struct.x25_asy, %struct.x25_asy* %51, i32 0, i32 1
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  store i32 %50, i32* %54, align 4
  %55 = load %struct.x25_asy*, %struct.x25_asy** %4, align 8
  %56 = getelementptr inbounds %struct.x25_asy, %struct.x25_asy* %55, i32 0, i32 1
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = call i32 @x25_asy_open(%struct.TYPE_4__* %57)
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %37
  %62 = load i32, i32* %5, align 4
  store i32 %62, i32* %2, align 4
  br label %69

63:                                               ; preds = %37
  %64 = load %struct.x25_asy*, %struct.x25_asy** %4, align 8
  %65 = getelementptr inbounds %struct.x25_asy, %struct.x25_asy* %64, i32 0, i32 1
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %63, %61, %34, %27, %15
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local %struct.x25_asy* @x25_asy_alloc(...) #1

declare dso_local i32 @tty_driver_flush_buffer(%struct.tty_struct*) #1

declare dso_local i32 @tty_ldisc_flush(%struct.tty_struct*) #1

declare dso_local i32 @x25_asy_open(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
