; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_istallion.c_stli_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_istallion.c_stli_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stlibrd = type { i32, i32, %struct.stliport** }
%struct.stliport = type { i32, %struct.tty_port, i32, i32 }
%struct.tty_port = type { i32, i32 }
%struct.tty_struct = type { i32, i32, %struct.stliport* }
%struct.file = type { i32 }

@stli_nrbrds = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@stli_brds = common dso_local global %struct.stlibrd** null, align 8
@BST_STARTED = common dso_local global i32 0, align 4
@ST_INITIALIZING = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@ASYNC_INITIALIZED = common dso_local global i32 0, align 4
@TTY_IO_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.file*)* @stli_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stli_open(%struct.tty_struct* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.stlibrd*, align 8
  %7 = alloca %struct.stliport*, align 8
  %8 = alloca %struct.tty_port*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %13 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %14 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = call i32 @MINOR2BRD(i32 %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* @stli_nrbrds, align 4
  %20 = icmp uge i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %154

24:                                               ; preds = %2
  %25 = load %struct.stlibrd**, %struct.stlibrd*** @stli_brds, align 8
  %26 = load i32, i32* %10, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.stlibrd*, %struct.stlibrd** %25, i64 %27
  %29 = load %struct.stlibrd*, %struct.stlibrd** %28, align 8
  store %struct.stlibrd* %29, %struct.stlibrd** %6, align 8
  %30 = load %struct.stlibrd*, %struct.stlibrd** %6, align 8
  %31 = icmp eq %struct.stlibrd* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %154

35:                                               ; preds = %24
  %36 = load %struct.stlibrd*, %struct.stlibrd** %6, align 8
  %37 = getelementptr inbounds %struct.stlibrd, %struct.stlibrd* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @BST_STARTED, align 4
  %40 = and i32 %38, %39
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load i32, i32* @ENODEV, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %154

45:                                               ; preds = %35
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @MINOR2PORT(i32 %46)
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = load %struct.stlibrd*, %struct.stlibrd** %6, align 8
  %50 = getelementptr inbounds %struct.stlibrd, %struct.stlibrd* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp ugt i32 %48, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %45
  %54 = load i32, i32* @ENODEV, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %154

56:                                               ; preds = %45
  %57 = load %struct.stlibrd*, %struct.stlibrd** %6, align 8
  %58 = getelementptr inbounds %struct.stlibrd, %struct.stlibrd* %57, i32 0, i32 2
  %59 = load %struct.stliport**, %struct.stliport*** %58, align 8
  %60 = load i32, i32* %11, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.stliport*, %struct.stliport** %59, i64 %61
  %63 = load %struct.stliport*, %struct.stliport** %62, align 8
  store %struct.stliport* %63, %struct.stliport** %7, align 8
  %64 = load %struct.stliport*, %struct.stliport** %7, align 8
  %65 = icmp eq %struct.stliport* %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %56
  %67 = load i32, i32* @ENODEV, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %154

69:                                               ; preds = %56
  %70 = load %struct.stliport*, %struct.stliport** %7, align 8
  %71 = getelementptr inbounds %struct.stliport, %struct.stliport* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp slt i32 %72, 1
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load i32, i32* @ENODEV, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %3, align 4
  br label %154

77:                                               ; preds = %69
  %78 = load %struct.stliport*, %struct.stliport** %7, align 8
  %79 = getelementptr inbounds %struct.stliport, %struct.stliport* %78, i32 0, i32 1
  store %struct.tty_port* %79, %struct.tty_port** %8, align 8
  %80 = load %struct.tty_port*, %struct.tty_port** %8, align 8
  %81 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %82 = call i32 @tty_port_tty_set(%struct.tty_port* %80, %struct.tty_struct* %81)
  %83 = load %struct.stliport*, %struct.stliport** %7, align 8
  %84 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %85 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %84, i32 0, i32 2
  store %struct.stliport* %83, %struct.stliport** %85, align 8
  %86 = load %struct.tty_port*, %struct.tty_port** %8, align 8
  %87 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %87, align 4
  %90 = load %struct.stliport*, %struct.stliport** %7, align 8
  %91 = getelementptr inbounds %struct.stliport, %struct.stliport* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @ST_INITIALIZING, align 4
  %94 = load %struct.stliport*, %struct.stliport** %7, align 8
  %95 = getelementptr inbounds %struct.stliport, %struct.stliport* %94, i32 0, i32 3
  %96 = call i32 @test_bit(i32 %93, i32* %95)
  %97 = icmp ne i32 %96, 0
  %98 = xor i1 %97, true
  %99 = zext i1 %98 to i32
  %100 = call i32 @wait_event_interruptible(i32 %92, i32 %99)
  %101 = load i32, i32* @current, align 4
  %102 = call i64 @signal_pending(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %77
  %105 = load i32, i32* @ERESTARTSYS, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %3, align 4
  br label %154

107:                                              ; preds = %77
  %108 = load %struct.stliport*, %struct.stliport** %7, align 8
  %109 = getelementptr inbounds %struct.stliport, %struct.stliport* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @ASYNC_INITIALIZED, align 4
  %113 = and i32 %111, %112
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %148

115:                                              ; preds = %107
  %116 = load i32, i32* @ST_INITIALIZING, align 4
  %117 = load %struct.stliport*, %struct.stliport** %7, align 8
  %118 = getelementptr inbounds %struct.stliport, %struct.stliport* %117, i32 0, i32 3
  %119 = call i32 @set_bit(i32 %116, i32* %118)
  %120 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %121 = load %struct.stlibrd*, %struct.stlibrd** %6, align 8
  %122 = load %struct.stliport*, %struct.stliport** %7, align 8
  %123 = call i32 @stli_initopen(%struct.tty_struct* %120, %struct.stlibrd* %121, %struct.stliport* %122)
  store i32 %123, i32* %12, align 4
  %124 = icmp sge i32 %123, 0
  br i1 %124, label %125, label %135

125:                                              ; preds = %115
  %126 = load i32, i32* @ASYNC_INITIALIZED, align 4
  %127 = load %struct.tty_port*, %struct.tty_port** %8, align 8
  %128 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = or i32 %129, %126
  store i32 %130, i32* %128, align 4
  %131 = load i32, i32* @TTY_IO_ERROR, align 4
  %132 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %133 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %132, i32 0, i32 1
  %134 = call i32 @clear_bit(i32 %131, i32* %133)
  br label %135

135:                                              ; preds = %125, %115
  %136 = load i32, i32* @ST_INITIALIZING, align 4
  %137 = load %struct.stliport*, %struct.stliport** %7, align 8
  %138 = getelementptr inbounds %struct.stliport, %struct.stliport* %137, i32 0, i32 3
  %139 = call i32 @clear_bit(i32 %136, i32* %138)
  %140 = load %struct.stliport*, %struct.stliport** %7, align 8
  %141 = getelementptr inbounds %struct.stliport, %struct.stliport* %140, i32 0, i32 2
  %142 = call i32 @wake_up_interruptible(i32* %141)
  %143 = load i32, i32* %12, align 4
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %135
  %146 = load i32, i32* %12, align 4
  store i32 %146, i32* %3, align 4
  br label %154

147:                                              ; preds = %135
  br label %148

148:                                              ; preds = %147, %107
  %149 = load %struct.stliport*, %struct.stliport** %7, align 8
  %150 = getelementptr inbounds %struct.stliport, %struct.stliport* %149, i32 0, i32 1
  %151 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %152 = load %struct.file*, %struct.file** %5, align 8
  %153 = call i32 @tty_port_block_til_ready(%struct.tty_port* %150, %struct.tty_struct* %151, %struct.file* %152)
  store i32 %153, i32* %3, align 4
  br label %154

154:                                              ; preds = %148, %145, %104, %74, %66, %53, %42, %32, %21
  %155 = load i32, i32* %3, align 4
  ret i32 %155
}

declare dso_local i32 @MINOR2BRD(i32) #1

declare dso_local i32 @MINOR2PORT(i32) #1

declare dso_local i32 @tty_port_tty_set(%struct.tty_port*, %struct.tty_struct*) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @stli_initopen(%struct.tty_struct*, %struct.stlibrd*, %struct.stliport*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @tty_port_block_til_ready(%struct.tty_port*, %struct.tty_struct*, %struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
