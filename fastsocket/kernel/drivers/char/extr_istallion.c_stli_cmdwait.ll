; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_istallion.c_stli_cmdwait.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_istallion.c_stli_cmdwait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stlibrd = type { i32 }
%struct.stliport = type { i64, i32, i32 }

@ST_CMDING = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stlibrd*, %struct.stliport*, i64, i8*, i32, i32)* @stli_cmdwait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stli_cmdwait(%struct.stlibrd* %0, %struct.stliport* %1, i64 %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.stlibrd*, align 8
  %9 = alloca %struct.stliport*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.stlibrd* %0, %struct.stlibrd** %8, align 8
  store %struct.stliport* %1, %struct.stliport** %9, align 8
  store i64 %2, i64* %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %14 = load %struct.stliport*, %struct.stliport** %9, align 8
  %15 = getelementptr inbounds %struct.stliport, %struct.stliport* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @ST_CMDING, align 4
  %18 = load %struct.stliport*, %struct.stliport** %9, align 8
  %19 = getelementptr inbounds %struct.stliport, %struct.stliport* %18, i32 0, i32 1
  %20 = call i32 @test_bit(i32 %17, i32* %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @wait_event_interruptible(i32 %16, i32 %23)
  %25 = load i32, i32* @current, align 4
  %26 = call i64 @signal_pending(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %6
  %29 = load i32, i32* @ERESTARTSYS, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %7, align 4
  br label %65

31:                                               ; preds = %6
  %32 = load %struct.stlibrd*, %struct.stlibrd** %8, align 8
  %33 = load %struct.stliport*, %struct.stliport** %9, align 8
  %34 = load i64, i64* %10, align 8
  %35 = load i8*, i8** %11, align 8
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* %13, align 4
  %38 = call i32 @stli_sendcmd(%struct.stlibrd* %32, %struct.stliport* %33, i64 %34, i8* %35, i32 %36, i32 %37)
  %39 = load %struct.stliport*, %struct.stliport** %9, align 8
  %40 = getelementptr inbounds %struct.stliport, %struct.stliport* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @ST_CMDING, align 4
  %43 = load %struct.stliport*, %struct.stliport** %9, align 8
  %44 = getelementptr inbounds %struct.stliport, %struct.stliport* %43, i32 0, i32 1
  %45 = call i32 @test_bit(i32 %42, i32* %44)
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = call i32 @wait_event_interruptible(i32 %41, i32 %48)
  %50 = load i32, i32* @current, align 4
  %51 = call i64 @signal_pending(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %31
  %54 = load i32, i32* @ERESTARTSYS, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %7, align 4
  br label %65

56:                                               ; preds = %31
  %57 = load %struct.stliport*, %struct.stliport** %9, align 8
  %58 = getelementptr inbounds %struct.stliport, %struct.stliport* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load i32, i32* @EIO, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %7, align 4
  br label %65

64:                                               ; preds = %56
  store i32 0, i32* %7, align 4
  br label %65

65:                                               ; preds = %64, %61, %53, %28
  %66 = load i32, i32* %7, align 4
  ret i32 %66
}

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @stli_sendcmd(%struct.stlibrd*, %struct.stliport*, i64, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
