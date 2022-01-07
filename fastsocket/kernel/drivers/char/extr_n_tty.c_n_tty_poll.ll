; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_n_tty.c_n_tty_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_n_tty.c_n_tty_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__*, i64, i32, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }
%struct.file = type { i32 }

@POLLIN = common dso_local global i32 0, align 4
@POLLRDNORM = common dso_local global i32 0, align 4
@POLLPRI = common dso_local global i32 0, align 4
@TTY_OTHER_CLOSED = common dso_local global i32 0, align 4
@POLLHUP = common dso_local global i32 0, align 4
@WAKEUP_CHARS = common dso_local global i64 0, align 8
@POLLOUT = common dso_local global i32 0, align 4
@POLLWRNORM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.file*, i32*)* @n_tty_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @n_tty_poll(%struct.tty_struct* %0, %struct.file* %1, i32* %2) #0 {
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.file*, %struct.file** %5, align 8
  %9 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %10 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %9, i32 0, i32 6
  %11 = load i32*, i32** %6, align 8
  %12 = call i32 @poll_wait(%struct.file* %8, i32* %10, i32* %11)
  %13 = load %struct.file*, %struct.file** %5, align 8
  %14 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %15 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %14, i32 0, i32 5
  %16 = load i32*, i32** %6, align 8
  %17 = call i32 @poll_wait(%struct.file* %13, i32* %15, i32* %16)
  %18 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %19 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %20 = call i64 @TIME_CHAR(%struct.tty_struct* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  br label %26

23:                                               ; preds = %3
  %24 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %25 = call i32 @MIN_CHAR(%struct.tty_struct* %24)
  br label %26

26:                                               ; preds = %23, %22
  %27 = phi i32 [ 0, %22 ], [ %25, %23 ]
  %28 = call i64 @input_available_p(%struct.tty_struct* %18, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %26
  %31 = load i32, i32* @POLLIN, align 4
  %32 = load i32, i32* @POLLRDNORM, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* %7, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %30, %26
  %37 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %38 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %56

41:                                               ; preds = %36
  %42 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %43 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %42, i32 0, i32 3
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %41
  %49 = load i32, i32* @POLLPRI, align 4
  %50 = load i32, i32* @POLLIN, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @POLLRDNORM, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* %7, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %48, %41, %36
  %57 = load i32, i32* @TTY_OTHER_CLOSED, align 4
  %58 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %59 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %58, i32 0, i32 2
  %60 = call i64 @test_bit(i32 %57, i32* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %56
  %63 = load i32, i32* @POLLHUP, align 4
  %64 = load i32, i32* %7, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %7, align 4
  br label %66

66:                                               ; preds = %62, %56
  %67 = load %struct.file*, %struct.file** %5, align 8
  %68 = call i64 @tty_hung_up_p(%struct.file* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %66
  %71 = load i32, i32* @POLLHUP, align 4
  %72 = load i32, i32* %7, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %7, align 4
  br label %74

74:                                               ; preds = %70, %66
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* @POLLHUP, align 4
  %77 = load i32, i32* @POLLIN, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @POLLRDNORM, align 4
  %80 = or i32 %78, %79
  %81 = and i32 %75, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %100, label %83

83:                                               ; preds = %74
  %84 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %85 = call i32 @MIN_CHAR(%struct.tty_struct* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %96

87:                                               ; preds = %83
  %88 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %89 = call i64 @TIME_CHAR(%struct.tty_struct* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %87
  %92 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %93 = call i32 @MIN_CHAR(%struct.tty_struct* %92)
  %94 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %95 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  br label %99

96:                                               ; preds = %87, %83
  %97 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %98 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %97, i32 0, i32 0
  store i32 1, i32* %98, align 8
  br label %99

99:                                               ; preds = %96, %91
  br label %100

100:                                              ; preds = %99, %74
  %101 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %102 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %101, i32 0, i32 1
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %126

107:                                              ; preds = %100
  %108 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %109 = call i32 @tty_is_writelocked(%struct.tty_struct* %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %126, label %111

111:                                              ; preds = %107
  %112 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %113 = call i64 @tty_chars_in_buffer(%struct.tty_struct* %112)
  %114 = load i64, i64* @WAKEUP_CHARS, align 8
  %115 = icmp slt i64 %113, %114
  br i1 %115, label %116, label %126

116:                                              ; preds = %111
  %117 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %118 = call i64 @tty_write_room(%struct.tty_struct* %117)
  %119 = icmp sgt i64 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %116
  %121 = load i32, i32* @POLLOUT, align 4
  %122 = load i32, i32* @POLLWRNORM, align 4
  %123 = or i32 %121, %122
  %124 = load i32, i32* %7, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %7, align 4
  br label %126

126:                                              ; preds = %120, %116, %111, %107, %100
  %127 = load i32, i32* %7, align 4
  ret i32 %127
}

declare dso_local i32 @poll_wait(%struct.file*, i32*, i32*) #1

declare dso_local i64 @input_available_p(%struct.tty_struct*, i32) #1

declare dso_local i64 @TIME_CHAR(%struct.tty_struct*) #1

declare dso_local i32 @MIN_CHAR(%struct.tty_struct*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @tty_hung_up_p(%struct.file*) #1

declare dso_local i32 @tty_is_writelocked(%struct.tty_struct*) #1

declare dso_local i64 @tty_chars_in_buffer(%struct.tty_struct*) #1

declare dso_local i64 @tty_write_room(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
