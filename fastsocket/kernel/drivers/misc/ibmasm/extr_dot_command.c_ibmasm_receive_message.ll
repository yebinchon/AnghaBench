; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/ibmasm/extr_dot_command.c_ibmasm_receive_message.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/ibmasm/extr_dot_command.c_ibmasm_receive_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.service_processor = type { i32 }
%struct.dot_command_header = type { i32 }

@.str = private unnamed_addr constant [49 x i8] c"Received unknown message from service processor\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ibmasm_receive_message(%struct.service_processor* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.service_processor*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dot_command_header*, align 8
  store %struct.service_processor* %0, %struct.service_processor** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.dot_command_header*
  store %struct.dot_command_header* %10, %struct.dot_command_header** %8, align 8
  %11 = load i32, i32* %6, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %50

14:                                               ; preds = %3
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @get_dot_command_size(i8* %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %50

20:                                               ; preds = %14
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp sgt i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %7, align 4
  br label %26

26:                                               ; preds = %24, %20
  %27 = load %struct.dot_command_header*, %struct.dot_command_header** %8, align 8
  %28 = getelementptr inbounds %struct.dot_command_header, %struct.dot_command_header* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %45 [
    i32 129, label %30
    i32 130, label %35
    i32 128, label %40
  ]

30:                                               ; preds = %26
  %31 = load %struct.service_processor*, %struct.service_processor** %4, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @ibmasm_receive_event(%struct.service_processor* %31, i8* %32, i32 %33)
  br label %50

35:                                               ; preds = %26
  %36 = load %struct.service_processor*, %struct.service_processor** %4, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @ibmasm_receive_command_response(%struct.service_processor* %36, i8* %37, i32 %38)
  br label %50

40:                                               ; preds = %26
  %41 = load %struct.service_processor*, %struct.service_processor** %4, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @ibmasm_receive_heartbeat(%struct.service_processor* %41, i8* %42, i32 %43)
  br label %50

45:                                               ; preds = %26
  %46 = load %struct.service_processor*, %struct.service_processor** %4, align 8
  %47 = getelementptr inbounds %struct.service_processor, %struct.service_processor* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @dev_err(i32 %48, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %50

50:                                               ; preds = %13, %19, %45, %40, %35, %30
  ret void
}

declare dso_local i32 @get_dot_command_size(i8*) #1

declare dso_local i32 @ibmasm_receive_event(%struct.service_processor*, i8*, i32) #1

declare dso_local i32 @ibmasm_receive_command_response(%struct.service_processor*, i8*, i32) #1

declare dso_local i32 @ibmasm_receive_heartbeat(%struct.service_processor*, i8*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
