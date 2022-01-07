; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_hso.c_put_rxbuf_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_hso.c_put_rxbuf_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i32 }
%struct.hso_serial = type { i32, i64*, i32 }
%struct.tty_struct = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"serial = NULL\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"data to push to tty\00", align 1
@TTY_THROTTLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.urb*, %struct.hso_serial*)* @put_rxbuf_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @put_rxbuf_data(%struct.urb* %0, %struct.hso_serial* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.urb*, align 8
  %5 = alloca %struct.hso_serial*, align 8
  %6 = alloca %struct.tty_struct*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.urb* %0, %struct.urb** %4, align 8
  store %struct.hso_serial* %1, %struct.hso_serial** %5, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.urb*, %struct.urb** %4, align 8
  %10 = icmp eq %struct.urb* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load %struct.hso_serial*, %struct.hso_serial** %5, align 8
  %13 = icmp eq %struct.hso_serial* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %11, %2
  %15 = call i32 @D1(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 -2, i32* %3, align 4
  br label %83

16:                                               ; preds = %11
  %17 = load %struct.hso_serial*, %struct.hso_serial** %5, align 8
  %18 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.tty_struct* @tty_kref_get(i32 %19)
  store %struct.tty_struct* %20, %struct.tty_struct** %6, align 8
  %21 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %22 = icmp ne %struct.tty_struct* %21, null
  br i1 %22, label %23, label %66

23:                                               ; preds = %16
  %24 = load %struct.urb*, %struct.urb** %4, align 8
  %25 = getelementptr inbounds %struct.urb, %struct.urb* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.hso_serial*, %struct.hso_serial** %5, align 8
  %28 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sub nsw i32 %26, %29
  store i32 %30, i32* %7, align 4
  %31 = call i32 @D1(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %32

32:                                               ; preds = %44, %23
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %65

35:                                               ; preds = %32
  %36 = load i32, i32* @TTY_THROTTLED, align 4
  %37 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %38 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %37, i32 0, i32 0
  %39 = call i64 @test_bit(i32 %36, i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %43 = call i32 @tty_kref_put(%struct.tty_struct* %42)
  store i32 -1, i32* %3, align 4
  br label %83

44:                                               ; preds = %35
  %45 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %46 = load %struct.urb*, %struct.urb** %4, align 8
  %47 = getelementptr inbounds %struct.urb, %struct.urb* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.hso_serial*, %struct.hso_serial** %5, align 8
  %50 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %48, %51
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @tty_insert_flip_string(%struct.tty_struct* %45, i32 %52, i32 %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.hso_serial*, %struct.hso_serial** %5, align 8
  %57 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, %55
  store i32 %59, i32* %57, align 8
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %7, align 4
  %62 = sub nsw i32 %61, %60
  store i32 %62, i32* %7, align 4
  %63 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %64 = call i32 @tty_flip_buffer_push(%struct.tty_struct* %63)
  br label %32

65:                                               ; preds = %32
  br label %66

66:                                               ; preds = %65, %16
  %67 = load i32, i32* %7, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %66
  %70 = load %struct.hso_serial*, %struct.hso_serial** %5, align 8
  %71 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %70, i32 0, i32 0
  store i32 0, i32* %71, align 8
  %72 = load %struct.hso_serial*, %struct.hso_serial** %5, align 8
  %73 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %72, i32 0, i32 1
  %74 = load i64*, i64** %73, align 8
  %75 = load %struct.hso_serial*, %struct.hso_serial** %5, align 8
  %76 = load %struct.urb*, %struct.urb** %4, align 8
  %77 = call i64 @hso_urb_to_index(%struct.hso_serial* %75, %struct.urb* %76)
  %78 = getelementptr inbounds i64, i64* %74, i64 %77
  store i64 0, i64* %78, align 8
  br label %79

79:                                               ; preds = %69, %66
  %80 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %81 = call i32 @tty_kref_put(%struct.tty_struct* %80)
  %82 = load i32, i32* %7, align 4
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %79, %41, %14
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @D1(i8*) #1

declare dso_local %struct.tty_struct* @tty_kref_get(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @tty_kref_put(%struct.tty_struct*) #1

declare dso_local i32 @tty_insert_flip_string(%struct.tty_struct*, i32, i32) #1

declare dso_local i32 @tty_flip_buffer_push(%struct.tty_struct*) #1

declare dso_local i64 @hso_urb_to_index(%struct.hso_serial*, %struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
