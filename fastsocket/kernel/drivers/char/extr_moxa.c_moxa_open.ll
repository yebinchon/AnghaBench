; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_moxa.c_moxa_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_moxa.c_moxa_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.moxa_board_conf = type { i32, %struct.moxa_port*, i32 }
%struct.moxa_port = type { i64, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64, i32 }
%struct.tty_struct = type { i32, i32, %struct.moxa_port* }
%struct.file = type { i32 }

@MAX_PORTS = common dso_local global i32 0, align 4
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@moxa_openlock = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@moxa_boards = common dso_local global %struct.moxa_board_conf* null, align 8
@MAX_PORTS_PER_BOARD = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ASYNC_INITIALIZED = common dso_local global i32 0, align 4
@PORT_16550A = common dso_local global i64 0, align 8
@O_NONBLOCK = common dso_local global i32 0, align 4
@ASYNC_NORMAL_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.file*)* @moxa_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @moxa_open(%struct.tty_struct* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.moxa_board_conf*, align 8
  %7 = alloca %struct.moxa_port*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %10 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %11 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @MAX_PORTS, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %26

16:                                               ; preds = %2
  %17 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %18 = call i64 @capable(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  br label %24

21:                                               ; preds = %16
  %22 = load i32, i32* @EPERM, align 4
  %23 = sub nsw i32 0, %22
  br label %24

24:                                               ; preds = %21, %20
  %25 = phi i32 [ 0, %20 ], [ %23, %21 ]
  store i32 %25, i32* %3, align 4
  br label %162

26:                                               ; preds = %2
  %27 = call i64 @mutex_lock_interruptible(i32* @moxa_openlock)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32, i32* @ERESTARTSYS, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %162

32:                                               ; preds = %26
  %33 = load %struct.moxa_board_conf*, %struct.moxa_board_conf** @moxa_boards, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @MAX_PORTS_PER_BOARD, align 4
  %36 = sdiv i32 %34, %35
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.moxa_board_conf, %struct.moxa_board_conf* %33, i64 %37
  store %struct.moxa_board_conf* %38, %struct.moxa_board_conf** %6, align 8
  %39 = load %struct.moxa_board_conf*, %struct.moxa_board_conf** %6, align 8
  %40 = getelementptr inbounds %struct.moxa_board_conf, %struct.moxa_board_conf* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %32
  %44 = call i32 @mutex_unlock(i32* @moxa_openlock)
  %45 = load i32, i32* @ENODEV, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %162

47:                                               ; preds = %32
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @MAX_PORTS_PER_BOARD, align 4
  %50 = srem i32 %48, %49
  %51 = load %struct.moxa_board_conf*, %struct.moxa_board_conf** %6, align 8
  %52 = getelementptr inbounds %struct.moxa_board_conf, %struct.moxa_board_conf* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp sge i32 %50, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %47
  %56 = call i32 @mutex_unlock(i32* @moxa_openlock)
  %57 = load i32, i32* @ENODEV, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %162

59:                                               ; preds = %47
  %60 = load %struct.moxa_board_conf*, %struct.moxa_board_conf** %6, align 8
  %61 = getelementptr inbounds %struct.moxa_board_conf, %struct.moxa_board_conf* %60, i32 0, i32 1
  %62 = load %struct.moxa_port*, %struct.moxa_port** %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @MAX_PORTS_PER_BOARD, align 4
  %65 = srem i32 %63, %64
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.moxa_port, %struct.moxa_port* %62, i64 %66
  store %struct.moxa_port* %67, %struct.moxa_port** %7, align 8
  %68 = load %struct.moxa_port*, %struct.moxa_port** %7, align 8
  %69 = getelementptr inbounds %struct.moxa_port, %struct.moxa_port* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %71, 1
  store i64 %72, i64* %70, align 8
  %73 = load %struct.moxa_port*, %struct.moxa_port** %7, align 8
  %74 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %75 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %74, i32 0, i32 2
  store %struct.moxa_port* %73, %struct.moxa_port** %75, align 8
  %76 = load %struct.moxa_port*, %struct.moxa_port** %7, align 8
  %77 = getelementptr inbounds %struct.moxa_port, %struct.moxa_port* %76, i32 0, i32 1
  %78 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %79 = call i32 @tty_port_tty_set(%struct.TYPE_2__* %77, %struct.tty_struct* %78)
  %80 = load %struct.moxa_port*, %struct.moxa_port** %7, align 8
  %81 = getelementptr inbounds %struct.moxa_port, %struct.moxa_port* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @ASYNC_INITIALIZED, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %113, label %87

87:                                               ; preds = %59
  %88 = load %struct.moxa_port*, %struct.moxa_port** %7, align 8
  %89 = getelementptr inbounds %struct.moxa_port, %struct.moxa_port* %88, i32 0, i32 2
  store i64 0, i64* %89, align 8
  %90 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %91 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %92 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @moxa_set_tty_param(%struct.tty_struct* %90, i32 %93)
  %95 = load %struct.moxa_port*, %struct.moxa_port** %7, align 8
  %96 = call i32 @MoxaPortLineCtrl(%struct.moxa_port* %95, i32 1, i32 1)
  %97 = load %struct.moxa_port*, %struct.moxa_port** %7, align 8
  %98 = call i32 @MoxaPortEnable(%struct.moxa_port* %97)
  %99 = load %struct.moxa_port*, %struct.moxa_port** %7, align 8
  %100 = load %struct.moxa_port*, %struct.moxa_port** %7, align 8
  %101 = getelementptr inbounds %struct.moxa_port, %struct.moxa_port* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @PORT_16550A, align 8
  %104 = icmp eq i64 %102, %103
  %105 = zext i1 %104 to i32
  %106 = call i32 @MoxaSetFifo(%struct.moxa_port* %99, i32 %105)
  %107 = load i32, i32* @ASYNC_INITIALIZED, align 4
  %108 = load %struct.moxa_port*, %struct.moxa_port** %7, align 8
  %109 = getelementptr inbounds %struct.moxa_port, %struct.moxa_port* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = or i32 %111, %107
  store i32 %112, i32* %110, align 8
  br label %113

113:                                              ; preds = %87, %59
  %114 = call i32 @mutex_unlock(i32* @moxa_openlock)
  store i32 0, i32* %9, align 4
  %115 = load %struct.file*, %struct.file** %5, align 8
  %116 = getelementptr inbounds %struct.file, %struct.file* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @O_NONBLOCK, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %130, label %121

121:                                              ; preds = %113
  %122 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %123 = call i32 @C_CLOCAL(%struct.tty_struct* %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %130, label %125

125:                                              ; preds = %121
  %126 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %127 = load %struct.file*, %struct.file** %5, align 8
  %128 = load %struct.moxa_port*, %struct.moxa_port** %7, align 8
  %129 = call i32 @moxa_block_till_ready(%struct.tty_struct* %126, %struct.file* %127, %struct.moxa_port* %128)
  store i32 %129, i32* %9, align 4
  br label %130

130:                                              ; preds = %125, %121, %113
  %131 = call i32 @mutex_lock(i32* @moxa_openlock)
  %132 = load i32, i32* %9, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %152

134:                                              ; preds = %130
  %135 = load %struct.moxa_port*, %struct.moxa_port** %7, align 8
  %136 = getelementptr inbounds %struct.moxa_port, %struct.moxa_port* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %151

140:                                              ; preds = %134
  %141 = load %struct.moxa_port*, %struct.moxa_port** %7, align 8
  %142 = getelementptr inbounds %struct.moxa_port, %struct.moxa_port* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = add nsw i64 %144, -1
  store i64 %145, i64* %143, align 8
  %146 = icmp eq i64 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %140
  %148 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %149 = call i32 @moxa_close_port(%struct.tty_struct* %148)
  br label %150

150:                                              ; preds = %147, %140
  br label %151

151:                                              ; preds = %150, %134
  br label %159

152:                                              ; preds = %130
  %153 = load i32, i32* @ASYNC_NORMAL_ACTIVE, align 4
  %154 = load %struct.moxa_port*, %struct.moxa_port** %7, align 8
  %155 = getelementptr inbounds %struct.moxa_port, %struct.moxa_port* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = or i32 %157, %153
  store i32 %158, i32* %156, align 8
  br label %159

159:                                              ; preds = %152, %151
  %160 = call i32 @mutex_unlock(i32* @moxa_openlock)
  %161 = load i32, i32* %9, align 4
  store i32 %161, i32* %3, align 4
  br label %162

162:                                              ; preds = %159, %55, %43, %29, %24
  %163 = load i32, i32* %3, align 4
  ret i32 %163
}

declare dso_local i64 @capable(i32) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @tty_port_tty_set(%struct.TYPE_2__*, %struct.tty_struct*) #1

declare dso_local i32 @moxa_set_tty_param(%struct.tty_struct*, i32) #1

declare dso_local i32 @MoxaPortLineCtrl(%struct.moxa_port*, i32, i32) #1

declare dso_local i32 @MoxaPortEnable(%struct.moxa_port*) #1

declare dso_local i32 @MoxaSetFifo(%struct.moxa_port*, i32) #1

declare dso_local i32 @C_CLOCAL(%struct.tty_struct*) #1

declare dso_local i32 @moxa_block_till_ready(%struct.tty_struct*, %struct.file*, %struct.moxa_port*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @moxa_close_port(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
