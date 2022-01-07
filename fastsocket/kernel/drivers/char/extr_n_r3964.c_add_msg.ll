; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_n_r3964.c_add_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_n_r3964.c_add_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r3964_client_info = type { i32, i32, i32, %struct.r3964_message*, i32, %struct.r3964_message* }
%struct.r3964_message = type { i32, i32, i32, %struct.r3964_message*, %struct.r3964_block_header* }
%struct.r3964_block_header = type { i32 }

@R3964_MAX_MSG_COUNT = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"add_msg - kmalloc %p\00", align 1
@R3964_MSG_ACK = common dso_local global i32 0, align 4
@R3964_OVERFLOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"add_msg - inc prev OVERFLOW-msg\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"add_msg - queue OVERFLOW-msg\00", align 1
@R3964_USE_SIGIO = common dso_local global i32 0, align 4
@SIGIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r3964_client_info*, i32, i32, i32, %struct.r3964_block_header*)* @add_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_msg(%struct.r3964_client_info* %0, i32 %1, i32 %2, i32 %3, %struct.r3964_block_header* %4) #0 {
  %6 = alloca %struct.r3964_client_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.r3964_block_header*, align 8
  %11 = alloca %struct.r3964_message*, align 8
  %12 = alloca i64, align 8
  store %struct.r3964_client_info* %0, %struct.r3964_client_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.r3964_block_header* %4, %struct.r3964_block_header** %10, align 8
  %13 = load %struct.r3964_client_info*, %struct.r3964_client_info** %6, align 8
  %14 = getelementptr inbounds %struct.r3964_client_info, %struct.r3964_client_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @R3964_MAX_MSG_COUNT, align 4
  %17 = sub nsw i32 %16, 1
  %18 = icmp slt i32 %15, %17
  br i1 %18, label %19, label %90

19:                                               ; preds = %5
  br label %20

20:                                               ; preds = %114, %19
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load i32, i32* @GFP_ATOMIC, align 4
  br label %27

25:                                               ; preds = %20
  %26 = load i32, i32* @GFP_KERNEL, align 4
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i32 [ %24, %23 ], [ %26, %25 ]
  %29 = call %struct.r3964_message* @kmalloc(i32 32, i32 %28)
  store %struct.r3964_message* %29, %struct.r3964_message** %11, align 8
  %30 = load %struct.r3964_message*, %struct.r3964_message** %11, align 8
  %31 = call i32 @TRACE_M(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), %struct.r3964_message* %30)
  %32 = load %struct.r3964_message*, %struct.r3964_message** %11, align 8
  %33 = icmp eq %struct.r3964_message* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %132

35:                                               ; preds = %27
  %36 = load %struct.r3964_client_info*, %struct.r3964_client_info** %6, align 8
  %37 = getelementptr inbounds %struct.r3964_client_info, %struct.r3964_client_info* %36, i32 0, i32 4
  %38 = load i64, i64* %12, align 8
  %39 = call i32 @spin_lock_irqsave(i32* %37, i64 %38)
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.r3964_message*, %struct.r3964_message** %11, align 8
  %42 = getelementptr inbounds %struct.r3964_message, %struct.r3964_message* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.r3964_message*, %struct.r3964_message** %11, align 8
  %45 = getelementptr inbounds %struct.r3964_message, %struct.r3964_message* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.r3964_message*, %struct.r3964_message** %11, align 8
  %48 = getelementptr inbounds %struct.r3964_message, %struct.r3964_message* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 8
  %49 = load %struct.r3964_block_header*, %struct.r3964_block_header** %10, align 8
  %50 = load %struct.r3964_message*, %struct.r3964_message** %11, align 8
  %51 = getelementptr inbounds %struct.r3964_message, %struct.r3964_message* %50, i32 0, i32 4
  store %struct.r3964_block_header* %49, %struct.r3964_block_header** %51, align 8
  %52 = load %struct.r3964_message*, %struct.r3964_message** %11, align 8
  %53 = getelementptr inbounds %struct.r3964_message, %struct.r3964_message* %52, i32 0, i32 3
  store %struct.r3964_message* null, %struct.r3964_message** %53, align 8
  %54 = load %struct.r3964_client_info*, %struct.r3964_client_info** %6, align 8
  %55 = getelementptr inbounds %struct.r3964_client_info, %struct.r3964_client_info* %54, i32 0, i32 3
  %56 = load %struct.r3964_message*, %struct.r3964_message** %55, align 8
  %57 = icmp eq %struct.r3964_message* %56, null
  br i1 %57, label %58, label %64

58:                                               ; preds = %35
  %59 = load %struct.r3964_message*, %struct.r3964_message** %11, align 8
  %60 = load %struct.r3964_client_info*, %struct.r3964_client_info** %6, align 8
  %61 = getelementptr inbounds %struct.r3964_client_info, %struct.r3964_client_info* %60, i32 0, i32 3
  store %struct.r3964_message* %59, %struct.r3964_message** %61, align 8
  %62 = load %struct.r3964_client_info*, %struct.r3964_client_info** %6, align 8
  %63 = getelementptr inbounds %struct.r3964_client_info, %struct.r3964_client_info* %62, i32 0, i32 5
  store %struct.r3964_message* %59, %struct.r3964_message** %63, align 8
  br label %73

64:                                               ; preds = %35
  %65 = load %struct.r3964_message*, %struct.r3964_message** %11, align 8
  %66 = load %struct.r3964_client_info*, %struct.r3964_client_info** %6, align 8
  %67 = getelementptr inbounds %struct.r3964_client_info, %struct.r3964_client_info* %66, i32 0, i32 3
  %68 = load %struct.r3964_message*, %struct.r3964_message** %67, align 8
  %69 = getelementptr inbounds %struct.r3964_message, %struct.r3964_message* %68, i32 0, i32 3
  store %struct.r3964_message* %65, %struct.r3964_message** %69, align 8
  %70 = load %struct.r3964_message*, %struct.r3964_message** %11, align 8
  %71 = load %struct.r3964_client_info*, %struct.r3964_client_info** %6, align 8
  %72 = getelementptr inbounds %struct.r3964_client_info, %struct.r3964_client_info* %71, i32 0, i32 3
  store %struct.r3964_message* %70, %struct.r3964_message** %72, align 8
  br label %73

73:                                               ; preds = %64, %58
  %74 = load %struct.r3964_client_info*, %struct.r3964_client_info** %6, align 8
  %75 = getelementptr inbounds %struct.r3964_client_info, %struct.r3964_client_info* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 8
  %78 = load %struct.r3964_block_header*, %struct.r3964_block_header** %10, align 8
  %79 = icmp ne %struct.r3964_block_header* %78, null
  br i1 %79, label %80, label %85

80:                                               ; preds = %73
  %81 = load %struct.r3964_block_header*, %struct.r3964_block_header** %10, align 8
  %82 = getelementptr inbounds %struct.r3964_block_header, %struct.r3964_block_header* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 4
  br label %85

85:                                               ; preds = %80, %73
  %86 = load %struct.r3964_client_info*, %struct.r3964_client_info** %6, align 8
  %87 = getelementptr inbounds %struct.r3964_client_info, %struct.r3964_client_info* %86, i32 0, i32 4
  %88 = load i64, i64* %12, align 8
  %89 = call i32 @spin_unlock_irqrestore(i32* %87, i64 %88)
  br label %119

90:                                               ; preds = %5
  %91 = load %struct.r3964_client_info*, %struct.r3964_client_info** %6, align 8
  %92 = getelementptr inbounds %struct.r3964_client_info, %struct.r3964_client_info* %91, i32 0, i32 3
  %93 = load %struct.r3964_message*, %struct.r3964_message** %92, align 8
  %94 = getelementptr inbounds %struct.r3964_message, %struct.r3964_message* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @R3964_MSG_ACK, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %114

98:                                               ; preds = %90
  %99 = load %struct.r3964_client_info*, %struct.r3964_client_info** %6, align 8
  %100 = getelementptr inbounds %struct.r3964_client_info, %struct.r3964_client_info* %99, i32 0, i32 3
  %101 = load %struct.r3964_message*, %struct.r3964_message** %100, align 8
  %102 = getelementptr inbounds %struct.r3964_message, %struct.r3964_message* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @R3964_OVERFLOW, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %114

106:                                              ; preds = %98
  %107 = load %struct.r3964_client_info*, %struct.r3964_client_info** %6, align 8
  %108 = getelementptr inbounds %struct.r3964_client_info, %struct.r3964_client_info* %107, i32 0, i32 3
  %109 = load %struct.r3964_message*, %struct.r3964_message** %108, align 8
  %110 = getelementptr inbounds %struct.r3964_message, %struct.r3964_message* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %110, align 4
  %113 = call i32 @TRACE_PE(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %118

114:                                              ; preds = %98, %90
  %115 = load i32, i32* @R3964_MSG_ACK, align 4
  store i32 %115, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %116 = load i32, i32* @R3964_OVERFLOW, align 4
  store i32 %116, i32* %9, align 4
  store %struct.r3964_block_header* null, %struct.r3964_block_header** %10, align 8
  %117 = call i32 @TRACE_PE(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %20

118:                                              ; preds = %106
  br label %119

119:                                              ; preds = %118, %85
  %120 = load %struct.r3964_client_info*, %struct.r3964_client_info** %6, align 8
  %121 = getelementptr inbounds %struct.r3964_client_info, %struct.r3964_client_info* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @R3964_USE_SIGIO, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %119
  %127 = load %struct.r3964_client_info*, %struct.r3964_client_info** %6, align 8
  %128 = getelementptr inbounds %struct.r3964_client_info, %struct.r3964_client_info* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @SIGIO, align 4
  %131 = call i32 @kill_pid(i32 %129, i32 %130, i32 1)
  br label %132

132:                                              ; preds = %34, %126, %119
  ret void
}

declare dso_local %struct.r3964_message* @kmalloc(i32, i32) #1

declare dso_local i32 @TRACE_M(i8*, %struct.r3964_message*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @TRACE_PE(i8*) #1

declare dso_local i32 @kill_pid(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
