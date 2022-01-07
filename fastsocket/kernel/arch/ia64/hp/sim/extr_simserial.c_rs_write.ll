; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/hp/sim/extr_simserial.c_rs_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/hp/sim/extr_simserial.c_rs_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, i32, i64 }
%struct.async_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64 }

@tmp_buf = common dso_local global i32 0, align 4
@SERIAL_XMIT_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, i8*, i32)* @rs_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs_write(%struct.tty_struct* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.async_struct*, align 8
  %11 = alloca i64, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %12 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %13 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.async_struct*
  store %struct.async_struct* %15, %struct.async_struct** %10, align 8
  %16 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %17 = icmp ne %struct.tty_struct* %16, null
  br i1 %17, label %18, label %27

18:                                               ; preds = %3
  %19 = load %struct.async_struct*, %struct.async_struct** %10, align 8
  %20 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load i32, i32* @tmp_buf, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %24, %18, %3
  store i32 0, i32* %4, align 4
  br label %116

28:                                               ; preds = %24
  %29 = load i64, i64* %11, align 8
  %30 = call i32 @local_irq_save(i64 %29)
  br label %31

31:                                               ; preds = %28, %51
  %32 = load %struct.async_struct*, %struct.async_struct** %10, align 8
  %33 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.async_struct*, %struct.async_struct** %10, align 8
  %37 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @SERIAL_XMIT_SIZE, align 4
  %41 = call i32 @CIRC_SPACE_TO_END(i32 %35, i32 %39, i32 %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %31
  %46 = load i32, i32* %7, align 4
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %45, %31
  %48 = load i32, i32* %8, align 4
  %49 = icmp sle i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  br label %87

51:                                               ; preds = %47
  %52 = load %struct.async_struct*, %struct.async_struct** %10, align 8
  %53 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.async_struct*, %struct.async_struct** %10, align 8
  %57 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %55, %60
  %62 = load i8*, i8** %6, align 8
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @memcpy(i64 %61, i8* %62, i32 %63)
  %65 = load %struct.async_struct*, %struct.async_struct** %10, align 8
  %66 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = add nsw i32 %68, %69
  %71 = load i32, i32* @SERIAL_XMIT_SIZE, align 4
  %72 = sub nsw i32 %71, 1
  %73 = and i32 %70, %72
  %74 = load %struct.async_struct*, %struct.async_struct** %10, align 8
  %75 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  store i32 %73, i32* %76, align 8
  %77 = load i32, i32* %8, align 4
  %78 = load i8*, i8** %6, align 8
  %79 = sext i32 %77 to i64
  %80 = getelementptr inbounds i8, i8* %78, i64 %79
  store i8* %80, i8** %6, align 8
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* %7, align 4
  %83 = sub nsw i32 %82, %81
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 %85, %84
  store i32 %86, i32* %9, align 4
  br label %31

87:                                               ; preds = %50
  %88 = load i64, i64* %11, align 8
  %89 = call i32 @local_irq_restore(i64 %88)
  %90 = load %struct.async_struct*, %struct.async_struct** %10, align 8
  %91 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.async_struct*, %struct.async_struct** %10, align 8
  %95 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @SERIAL_XMIT_SIZE, align 4
  %99 = call i64 @CIRC_CNT(i32 %93, i32 %97, i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %114

101:                                              ; preds = %87
  %102 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %103 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %114, label %106

106:                                              ; preds = %101
  %107 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %108 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %114, label %111

111:                                              ; preds = %106
  %112 = load %struct.async_struct*, %struct.async_struct** %10, align 8
  %113 = call i32 @transmit_chars(%struct.async_struct* %112, i32* null)
  br label %114

114:                                              ; preds = %111, %106, %101, %87
  %115 = load i32, i32* %9, align 4
  store i32 %115, i32* %4, align 4
  br label %116

116:                                              ; preds = %114, %27
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @CIRC_SPACE_TO_END(i32, i32, i32) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i64 @CIRC_CNT(i32, i32, i32) #1

declare dso_local i32 @transmit_chars(%struct.async_struct*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
