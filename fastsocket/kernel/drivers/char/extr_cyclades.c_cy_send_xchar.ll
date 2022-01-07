; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_cyclades.c_cy_send_xchar.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_cyclades.c_cy_send_xchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, %struct.cyclades_port* }
%struct.cyclades_port = type { i8, i32, %struct.cyclades_card* }
%struct.cyclades_card = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"cy_send_xchar\00", align 1
@C_CM_SENDXOFF = common dso_local global i32 0, align 4
@C_CM_SENDXON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, i8)* @cy_send_xchar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cy_send_xchar(%struct.tty_struct* %0, i8 signext %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct.cyclades_port*, align 8
  %6 = alloca %struct.cyclades_card*, align 8
  %7 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store i8 %1, i8* %4, align 1
  %8 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %9 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %8, i32 0, i32 1
  %10 = load %struct.cyclades_port*, %struct.cyclades_port** %9, align 8
  store %struct.cyclades_port* %10, %struct.cyclades_port** %5, align 8
  %11 = load %struct.cyclades_port*, %struct.cyclades_port** %5, align 8
  %12 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %13 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @serial_paranoia_check(%struct.cyclades_port* %11, i32 %14, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %67

18:                                               ; preds = %2
  %19 = load i8, i8* %4, align 1
  %20 = load %struct.cyclades_port*, %struct.cyclades_port** %5, align 8
  %21 = getelementptr inbounds %struct.cyclades_port, %struct.cyclades_port* %20, i32 0, i32 0
  store i8 %19, i8* %21, align 8
  %22 = load i8, i8* %4, align 1
  %23 = icmp ne i8 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %26 = call i32 @cy_start(%struct.tty_struct* %25)
  br label %27

27:                                               ; preds = %24, %18
  %28 = load %struct.cyclades_port*, %struct.cyclades_port** %5, align 8
  %29 = getelementptr inbounds %struct.cyclades_port, %struct.cyclades_port* %28, i32 0, i32 2
  %30 = load %struct.cyclades_card*, %struct.cyclades_card** %29, align 8
  store %struct.cyclades_card* %30, %struct.cyclades_card** %6, align 8
  %31 = load %struct.cyclades_port*, %struct.cyclades_port** %5, align 8
  %32 = getelementptr inbounds %struct.cyclades_port, %struct.cyclades_port* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.cyclades_card*, %struct.cyclades_card** %6, align 8
  %35 = getelementptr inbounds %struct.cyclades_card, %struct.cyclades_card* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = sub nsw i32 %33, %36
  store i32 %37, i32* %7, align 4
  %38 = load %struct.cyclades_card*, %struct.cyclades_card** %6, align 8
  %39 = call i64 @cy_is_Z(%struct.cyclades_card* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %67

41:                                               ; preds = %27
  %42 = load i8, i8* %4, align 1
  %43 = sext i8 %42 to i32
  %44 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %45 = call signext i8 @STOP_CHAR(%struct.tty_struct* %44)
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %43, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %41
  %49 = load %struct.cyclades_card*, %struct.cyclades_card** %6, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @C_CM_SENDXOFF, align 4
  %52 = call i32 @cyz_issue_cmd(%struct.cyclades_card* %49, i32 %50, i32 %51, i64 0)
  br label %66

53:                                               ; preds = %41
  %54 = load i8, i8* %4, align 1
  %55 = sext i8 %54 to i32
  %56 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %57 = call signext i8 @START_CHAR(%struct.tty_struct* %56)
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %55, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %53
  %61 = load %struct.cyclades_card*, %struct.cyclades_card** %6, align 8
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @C_CM_SENDXON, align 4
  %64 = call i32 @cyz_issue_cmd(%struct.cyclades_card* %61, i32 %62, i32 %63, i64 0)
  br label %65

65:                                               ; preds = %60, %53
  br label %66

66:                                               ; preds = %65, %48
  br label %67

67:                                               ; preds = %17, %66, %27
  ret void
}

declare dso_local i64 @serial_paranoia_check(%struct.cyclades_port*, i32, i8*) #1

declare dso_local i32 @cy_start(%struct.tty_struct*) #1

declare dso_local i64 @cy_is_Z(%struct.cyclades_card*) #1

declare dso_local signext i8 @STOP_CHAR(%struct.tty_struct*) #1

declare dso_local i32 @cyz_issue_cmd(%struct.cyclades_card*, i32, i32, i64) #1

declare dso_local signext i8 @START_CHAR(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
