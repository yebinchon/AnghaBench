; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_n_r3964.c_on_receive_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_n_r3964.c_on_receive_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r3964_info = type { i32, i32, i64, i64, i64, i8*, i32, %struct.r3964_client_info*, i32, i32 }
%struct.r3964_client_info = type { i32, %struct.r3964_client_info* }
%struct.r3964_block_header = type { i32, i8*, i32*, i32*, i64 }

@R3964_BCC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"checksum error - got %x but expected %x\00", align 1
@R3964_CHECKSUM = common dso_local global i32 0, align 4
@R3964_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"on_receive_block - transmission failed error %x\00", align 1
@NAK = common dso_local global i32 0, align 4
@R3964_MAX_RETRIES = common dso_local global i64 0, align 8
@R3964_WAIT_FOR_RX_REPEAT = common dso_local global i8* null, align 8
@jiffies = common dso_local global i64 0, align 8
@R3964_TO_RX_PANIC = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [44 x i8] c"on_receive_block - failed after max retries\00", align 1
@R3964_IDLE = common dso_local global i8* null, align 8
@DLE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c" rx success: got %d chars\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"on_receive_block - kmalloc %p\00", align 1
@R3964_SIG_DATA = common dso_local global i32 0, align 4
@R3964_MSG_DATA = common dso_local global i32 0, align 4
@R3964_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r3964_info*)* @on_receive_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @on_receive_block(%struct.r3964_info* %0) #0 {
  %2 = alloca %struct.r3964_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.r3964_client_info*, align 8
  %5 = alloca %struct.r3964_block_header*, align 8
  store %struct.r3964_info* %0, %struct.r3964_info** %2, align 8
  %6 = load %struct.r3964_info*, %struct.r3964_info** %2, align 8
  %7 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %3, align 4
  %9 = load %struct.r3964_info*, %struct.r3964_info** %2, align 8
  %10 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @R3964_BCC, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %37

15:                                               ; preds = %1
  %16 = load %struct.r3964_info*, %struct.r3964_info** %2, align 8
  %17 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.r3964_info*, %struct.r3964_info** %2, align 8
  %20 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %18, %21
  br i1 %22, label %23, label %36

23:                                               ; preds = %15
  %24 = load %struct.r3964_info*, %struct.r3964_info** %2, align 8
  %25 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.r3964_info*, %struct.r3964_info** %2, align 8
  %28 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = call i32 (i8*, ...) @TRACE_PE(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %26, i64 %29)
  %31 = load i32, i32* @R3964_CHECKSUM, align 4
  %32 = load %struct.r3964_info*, %struct.r3964_info** %2, align 8
  %33 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 4
  br label %36

36:                                               ; preds = %23, %15
  br label %37

37:                                               ; preds = %36, %1
  %38 = load %struct.r3964_info*, %struct.r3964_info** %2, align 8
  %39 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @R3964_ERROR, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %81

44:                                               ; preds = %37
  %45 = load %struct.r3964_info*, %struct.r3964_info** %2, align 8
  %46 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @R3964_ERROR, align 4
  %49 = and i32 %47, %48
  %50 = call i32 (i8*, ...) @TRACE_PE(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = load %struct.r3964_info*, %struct.r3964_info** %2, align 8
  %52 = load i32, i32* @NAK, align 4
  %53 = call i32 @put_char(%struct.r3964_info* %51, i32 %52)
  %54 = load %struct.r3964_info*, %struct.r3964_info** %2, align 8
  %55 = call i32 @flush(%struct.r3964_info* %54)
  %56 = load %struct.r3964_info*, %struct.r3964_info** %2, align 8
  %57 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %56, i32 0, i32 4
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @R3964_MAX_RETRIES, align 8
  %60 = icmp slt i64 %58, %59
  br i1 %60, label %61, label %75

61:                                               ; preds = %44
  %62 = load i8*, i8** @R3964_WAIT_FOR_RX_REPEAT, align 8
  %63 = load %struct.r3964_info*, %struct.r3964_info** %2, align 8
  %64 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %63, i32 0, i32 5
  store i8* %62, i8** %64, align 8
  %65 = load %struct.r3964_info*, %struct.r3964_info** %2, align 8
  %66 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %65, i32 0, i32 4
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %67, 1
  store i64 %68, i64* %66, align 8
  %69 = load %struct.r3964_info*, %struct.r3964_info** %2, align 8
  %70 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %69, i32 0, i32 9
  %71 = load i64, i64* @jiffies, align 8
  %72 = load i64, i64* @R3964_TO_RX_PANIC, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @mod_timer(i32* %70, i64 %73)
  br label %80

75:                                               ; preds = %44
  %76 = call i32 (i8*, ...) @TRACE_PE(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %77 = load i8*, i8** @R3964_IDLE, align 8
  %78 = load %struct.r3964_info*, %struct.r3964_info** %2, align 8
  %79 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %78, i32 0, i32 5
  store i8* %77, i8** %79, align 8
  br label %80

80:                                               ; preds = %75, %61
  br label %163

81:                                               ; preds = %37
  %82 = load %struct.r3964_info*, %struct.r3964_info** %2, align 8
  %83 = load i32, i32* @DLE, align 4
  %84 = call i32 @put_char(%struct.r3964_info* %82, i32 %83)
  %85 = load %struct.r3964_info*, %struct.r3964_info** %2, align 8
  %86 = call i32 @flush(%struct.r3964_info* %85)
  %87 = load %struct.r3964_info*, %struct.r3964_info** %2, align 8
  %88 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %87, i32 0, i32 9
  %89 = call i32 @del_timer_sync(i32* %88)
  %90 = load i32, i32* %3, align 4
  %91 = call i32 @TRACE_PS(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %90)
  %92 = load i32, i32* %3, align 4
  %93 = zext i32 %92 to i64
  %94 = add i64 %93, 40
  %95 = trunc i64 %94 to i32
  %96 = load i32, i32* @GFP_KERNEL, align 4
  %97 = call %struct.r3964_block_header* @kmalloc(i32 %95, i32 %96)
  store %struct.r3964_block_header* %97, %struct.r3964_block_header** %5, align 8
  %98 = load %struct.r3964_block_header*, %struct.r3964_block_header** %5, align 8
  %99 = call i32 @TRACE_M(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), %struct.r3964_block_header* %98)
  %100 = load %struct.r3964_block_header*, %struct.r3964_block_header** %5, align 8
  %101 = icmp eq %struct.r3964_block_header* %100, null
  br i1 %101, label %102, label %103

102:                                              ; preds = %81
  br label %163

103:                                              ; preds = %81
  %104 = load i32, i32* %3, align 4
  %105 = load %struct.r3964_block_header*, %struct.r3964_block_header** %5, align 8
  %106 = getelementptr inbounds %struct.r3964_block_header, %struct.r3964_block_header* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 8
  %107 = load %struct.r3964_block_header*, %struct.r3964_block_header** %5, align 8
  %108 = bitcast %struct.r3964_block_header* %107 to i8*
  %109 = getelementptr inbounds i8, i8* %108, i64 40
  %110 = load %struct.r3964_block_header*, %struct.r3964_block_header** %5, align 8
  %111 = getelementptr inbounds %struct.r3964_block_header, %struct.r3964_block_header* %110, i32 0, i32 1
  store i8* %109, i8** %111, align 8
  %112 = load %struct.r3964_block_header*, %struct.r3964_block_header** %5, align 8
  %113 = getelementptr inbounds %struct.r3964_block_header, %struct.r3964_block_header* %112, i32 0, i32 4
  store i64 0, i64* %113, align 8
  %114 = load %struct.r3964_block_header*, %struct.r3964_block_header** %5, align 8
  %115 = getelementptr inbounds %struct.r3964_block_header, %struct.r3964_block_header* %114, i32 0, i32 3
  store i32* null, i32** %115, align 8
  %116 = load %struct.r3964_block_header*, %struct.r3964_block_header** %5, align 8
  %117 = getelementptr inbounds %struct.r3964_block_header, %struct.r3964_block_header* %116, i32 0, i32 2
  store i32* null, i32** %117, align 8
  %118 = load %struct.r3964_block_header*, %struct.r3964_block_header** %5, align 8
  %119 = getelementptr inbounds %struct.r3964_block_header, %struct.r3964_block_header* %118, i32 0, i32 1
  %120 = load i8*, i8** %119, align 8
  %121 = load %struct.r3964_info*, %struct.r3964_info** %2, align 8
  %122 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %121, i32 0, i32 8
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* %3, align 4
  %125 = call i32 @memcpy(i8* %120, i32 %123, i32 %124)
  %126 = load %struct.r3964_info*, %struct.r3964_info** %2, align 8
  %127 = load %struct.r3964_block_header*, %struct.r3964_block_header** %5, align 8
  %128 = call i32 @add_rx_queue(%struct.r3964_info* %126, %struct.r3964_block_header* %127)
  %129 = load %struct.r3964_info*, %struct.r3964_info** %2, align 8
  %130 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %129, i32 0, i32 7
  %131 = load %struct.r3964_client_info*, %struct.r3964_client_info** %130, align 8
  store %struct.r3964_client_info* %131, %struct.r3964_client_info** %4, align 8
  br label %132

132:                                              ; preds = %150, %103
  %133 = load %struct.r3964_client_info*, %struct.r3964_client_info** %4, align 8
  %134 = icmp ne %struct.r3964_client_info* %133, null
  br i1 %134, label %135, label %154

135:                                              ; preds = %132
  %136 = load %struct.r3964_client_info*, %struct.r3964_client_info** %4, align 8
  %137 = getelementptr inbounds %struct.r3964_client_info, %struct.r3964_client_info* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @R3964_SIG_DATA, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %149

142:                                              ; preds = %135
  %143 = load %struct.r3964_client_info*, %struct.r3964_client_info** %4, align 8
  %144 = load i32, i32* @R3964_MSG_DATA, align 4
  %145 = load i32, i32* %3, align 4
  %146 = load i32, i32* @R3964_OK, align 4
  %147 = load %struct.r3964_block_header*, %struct.r3964_block_header** %5, align 8
  %148 = call i32 @add_msg(%struct.r3964_client_info* %143, i32 %144, i32 %145, i32 %146, %struct.r3964_block_header* %147)
  br label %149

149:                                              ; preds = %142, %135
  br label %150

150:                                              ; preds = %149
  %151 = load %struct.r3964_client_info*, %struct.r3964_client_info** %4, align 8
  %152 = getelementptr inbounds %struct.r3964_client_info, %struct.r3964_client_info* %151, i32 0, i32 1
  %153 = load %struct.r3964_client_info*, %struct.r3964_client_info** %152, align 8
  store %struct.r3964_client_info* %153, %struct.r3964_client_info** %4, align 8
  br label %132

154:                                              ; preds = %132
  %155 = load %struct.r3964_info*, %struct.r3964_info** %2, align 8
  %156 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %155, i32 0, i32 6
  %157 = call i32 @wake_up_interruptible(i32* %156)
  %158 = load i8*, i8** @R3964_IDLE, align 8
  %159 = load %struct.r3964_info*, %struct.r3964_info** %2, align 8
  %160 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %159, i32 0, i32 5
  store i8* %158, i8** %160, align 8
  %161 = load %struct.r3964_info*, %struct.r3964_info** %2, align 8
  %162 = call i32 @trigger_transmit(%struct.r3964_info* %161)
  br label %163

163:                                              ; preds = %154, %102, %80
  ret void
}

declare dso_local i32 @TRACE_PE(i8*, ...) #1

declare dso_local i32 @put_char(%struct.r3964_info*, i32) #1

declare dso_local i32 @flush(%struct.r3964_info*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @TRACE_PS(i8*, i32) #1

declare dso_local %struct.r3964_block_header* @kmalloc(i32, i32) #1

declare dso_local i32 @TRACE_M(i8*, %struct.r3964_block_header*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @add_rx_queue(%struct.r3964_info*, %struct.r3964_block_header*) #1

declare dso_local i32 @add_msg(%struct.r3964_client_info*, i32, i32, i32, %struct.r3964_block_header*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @trigger_transmit(%struct.r3964_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
