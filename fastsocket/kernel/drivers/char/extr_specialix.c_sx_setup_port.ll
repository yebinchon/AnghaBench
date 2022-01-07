; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_specialix.c_sx_setup_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_specialix.c_sx_setup_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.specialix_board = type { i32 }
%struct.specialix_port = type { i8*, i32, %struct.TYPE_4__, i64, i64, i64 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@ASYNC_INITIALIZED = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@TTY_IO_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.specialix_board*, %struct.specialix_port*)* @sx_setup_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sx_setup_port(%struct.specialix_board* %0, %struct.specialix_port* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.specialix_board*, align 8
  %5 = alloca %struct.specialix_port*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.specialix_board* %0, %struct.specialix_board** %4, align 8
  store %struct.specialix_port* %1, %struct.specialix_port** %5, align 8
  %8 = call i32 (...) @func_enter()
  %9 = load %struct.specialix_port*, %struct.specialix_port** %5, align 8
  %10 = getelementptr inbounds %struct.specialix_port, %struct.specialix_port* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @ASYNC_INITIALIZED, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = call i32 (...) @func_exit()
  store i32 0, i32* %3, align 4
  br label %87

18:                                               ; preds = %2
  %19 = load %struct.specialix_port*, %struct.specialix_port** %5, align 8
  %20 = getelementptr inbounds %struct.specialix_port, %struct.specialix_port* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %48, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i64 @get_zeroed_page(i32 %24)
  store i64 %25, i64* %7, align 8
  %26 = load i64, i64* %7, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = call i32 (...) @func_exit()
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %87

32:                                               ; preds = %23
  %33 = load %struct.specialix_port*, %struct.specialix_port** %5, align 8
  %34 = getelementptr inbounds %struct.specialix_port, %struct.specialix_port* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load i64, i64* %7, align 8
  %39 = call i32 @free_page(i64 %38)
  %40 = call i32 (...) @func_exit()
  %41 = load i32, i32* @ERESTARTSYS, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %87

43:                                               ; preds = %32
  %44 = load i64, i64* %7, align 8
  %45 = inttoptr i64 %44 to i8*
  %46 = load %struct.specialix_port*, %struct.specialix_port** %5, align 8
  %47 = getelementptr inbounds %struct.specialix_port, %struct.specialix_port* %46, i32 0, i32 0
  store i8* %45, i8** %47, align 8
  br label %48

48:                                               ; preds = %43, %18
  %49 = load %struct.specialix_port*, %struct.specialix_port** %5, align 8
  %50 = getelementptr inbounds %struct.specialix_port, %struct.specialix_port* %49, i32 0, i32 1
  %51 = load i64, i64* %6, align 8
  %52 = call i32 @spin_lock_irqsave(i32* %50, i64 %51)
  %53 = load %struct.specialix_port*, %struct.specialix_port** %5, align 8
  %54 = getelementptr inbounds %struct.specialix_port, %struct.specialix_port* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = icmp ne %struct.TYPE_3__* %56, null
  br i1 %57, label %58, label %66

58:                                               ; preds = %48
  %59 = load i32, i32* @TTY_IO_ERROR, align 4
  %60 = load %struct.specialix_port*, %struct.specialix_port** %5, align 8
  %61 = getelementptr inbounds %struct.specialix_port, %struct.specialix_port* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = call i32 @clear_bit(i32 %59, i32* %64)
  br label %66

66:                                               ; preds = %58, %48
  %67 = load %struct.specialix_port*, %struct.specialix_port** %5, align 8
  %68 = getelementptr inbounds %struct.specialix_port, %struct.specialix_port* %67, i32 0, i32 3
  store i64 0, i64* %68, align 8
  %69 = load %struct.specialix_port*, %struct.specialix_port** %5, align 8
  %70 = getelementptr inbounds %struct.specialix_port, %struct.specialix_port* %69, i32 0, i32 4
  store i64 0, i64* %70, align 8
  %71 = load %struct.specialix_port*, %struct.specialix_port** %5, align 8
  %72 = getelementptr inbounds %struct.specialix_port, %struct.specialix_port* %71, i32 0, i32 5
  store i64 0, i64* %72, align 8
  %73 = load %struct.specialix_board*, %struct.specialix_board** %4, align 8
  %74 = load %struct.specialix_port*, %struct.specialix_port** %5, align 8
  %75 = call i32 @sx_change_speed(%struct.specialix_board* %73, %struct.specialix_port* %74)
  %76 = load i32, i32* @ASYNC_INITIALIZED, align 4
  %77 = load %struct.specialix_port*, %struct.specialix_port** %5, align 8
  %78 = getelementptr inbounds %struct.specialix_port, %struct.specialix_port* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = or i32 %80, %76
  store i32 %81, i32* %79, align 8
  %82 = load %struct.specialix_port*, %struct.specialix_port** %5, align 8
  %83 = getelementptr inbounds %struct.specialix_port, %struct.specialix_port* %82, i32 0, i32 1
  %84 = load i64, i64* %6, align 8
  %85 = call i32 @spin_unlock_irqrestore(i32* %83, i64 %84)
  %86 = call i32 (...) @func_exit()
  store i32 0, i32* %3, align 4
  br label %87

87:                                               ; preds = %66, %37, %28, %16
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @func_enter(...) #1

declare dso_local i32 @func_exit(...) #1

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @sx_change_speed(%struct.specialix_board*, %struct.specialix_port*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
