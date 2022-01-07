; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_generic_serial.c_gs_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_generic_serial.c_gs_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, i32, %struct.gs_port* }
%struct.gs_port = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__, i32, i64 }
%struct.TYPE_4__ = type { i32 (%struct.gs_port*)* }
%struct.TYPE_3__ = type { i32 }

@ASYNC_INITIALIZED = common dso_local global i32 0, align 4
@SERIAL_XMIT_SIZE = common dso_local global i32 0, align 4
@GS_DEBUG_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"write: interrupts are %s\0A\00", align 1
@GS_TX_INTEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gs_write(%struct.tty_struct* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.gs_port*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %12 = call i32 (...) @func_enter()
  %13 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %14 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %13, i32 0, i32 2
  %15 = load %struct.gs_port*, %struct.gs_port** %14, align 8
  store %struct.gs_port* %15, %struct.gs_port** %8, align 8
  %16 = load %struct.gs_port*, %struct.gs_port** %8, align 8
  %17 = icmp ne %struct.gs_port* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %151

19:                                               ; preds = %3
  %20 = load %struct.gs_port*, %struct.gs_port** %8, align 8
  %21 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @ASYNC_INITIALIZED, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %151

28:                                               ; preds = %19
  %29 = load %struct.gs_port*, %struct.gs_port** %8, align 8
  %30 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %29, i32 0, i32 4
  %31 = call i32 @mutex_lock(i32* %30)
  br label %32

32:                                               ; preds = %28, %60
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* @SERIAL_XMIT_SIZE, align 4
  %35 = load %struct.gs_port*, %struct.gs_port** %8, align 8
  %36 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sub nsw i32 %34, %37
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %32
  %43 = load i32, i32* %11, align 4
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %42, %32
  %45 = load i32, i32* @SERIAL_XMIT_SIZE, align 4
  %46 = sub nsw i32 %45, 1
  %47 = load %struct.gs_port*, %struct.gs_port** %8, align 8
  %48 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = sub nsw i32 %46, %49
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %44
  %55 = load i32, i32* %11, align 4
  store i32 %55, i32* %9, align 4
  br label %56

56:                                               ; preds = %54, %44
  %57 = load i32, i32* %9, align 4
  %58 = icmp sle i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  br label %97

60:                                               ; preds = %56
  %61 = load %struct.gs_port*, %struct.gs_port** %8, align 8
  %62 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %61, i32 0, i32 5
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.gs_port*, %struct.gs_port** %8, align 8
  %65 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = sext i32 %66 to i64
  %68 = add nsw i64 %63, %67
  %69 = load i8*, i8** %6, align 8
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @memcpy(i64 %68, i8* %69, i32 %70)
  %72 = load i32, i32* %9, align 4
  %73 = load %struct.gs_port*, %struct.gs_port** %8, align 8
  %74 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, %72
  store i32 %76, i32* %74, align 4
  %77 = load %struct.gs_port*, %struct.gs_port** %8, align 8
  %78 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* %9, align 4
  %81 = add nsw i32 %79, %80
  %82 = load i32, i32* @SERIAL_XMIT_SIZE, align 4
  %83 = sub nsw i32 %82, 1
  %84 = and i32 %81, %83
  %85 = load %struct.gs_port*, %struct.gs_port** %8, align 8
  %86 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  %87 = load i32, i32* %9, align 4
  %88 = load i8*, i8** %6, align 8
  %89 = sext i32 %87 to i64
  %90 = getelementptr inbounds i8, i8* %88, i64 %89
  store i8* %90, i8** %6, align 8
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* %7, align 4
  %93 = sub nsw i32 %92, %91
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* %10, align 4
  %96 = add nsw i32 %95, %94
  store i32 %96, i32* %10, align 4
  br label %32

97:                                               ; preds = %59
  %98 = load %struct.gs_port*, %struct.gs_port** %8, align 8
  %99 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %98, i32 0, i32 4
  %100 = call i32 @mutex_unlock(i32* %99)
  %101 = load i32, i32* @GS_DEBUG_WRITE, align 4
  %102 = load %struct.gs_port*, %struct.gs_port** %8, align 8
  %103 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @GS_TX_INTEN, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  %109 = zext i1 %108 to i64
  %110 = select i1 %108, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %111 = call i32 @gs_dprintk(i32 %101, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %110)
  %112 = load %struct.gs_port*, %struct.gs_port** %8, align 8
  %113 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %148

116:                                              ; preds = %97
  %117 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %118 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %148, label %121

121:                                              ; preds = %116
  %122 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %123 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %148, label %126

126:                                              ; preds = %121
  %127 = load %struct.gs_port*, %struct.gs_port** %8, align 8
  %128 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %127, i32 0, i32 3
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @GS_TX_INTEN, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %148, label %134

134:                                              ; preds = %126
  %135 = load i32, i32* @GS_TX_INTEN, align 4
  %136 = load %struct.gs_port*, %struct.gs_port** %8, align 8
  %137 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %136, i32 0, i32 3
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = or i32 %139, %135
  store i32 %140, i32* %138, align 8
  %141 = load %struct.gs_port*, %struct.gs_port** %8, align 8
  %142 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %141, i32 0, i32 2
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 0
  %145 = load i32 (%struct.gs_port*)*, i32 (%struct.gs_port*)** %144, align 8
  %146 = load %struct.gs_port*, %struct.gs_port** %8, align 8
  %147 = call i32 %145(%struct.gs_port* %146)
  br label %148

148:                                              ; preds = %134, %126, %121, %116, %97
  %149 = call i32 (...) @func_exit()
  %150 = load i32, i32* %10, align 4
  store i32 %150, i32* %4, align 4
  br label %151

151:                                              ; preds = %148, %27, %18
  %152 = load i32, i32* %4, align 4
  ret i32 %152
}

declare dso_local i32 @func_enter(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @gs_dprintk(i32, i8*, i8*) #1

declare dso_local i32 @func_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
