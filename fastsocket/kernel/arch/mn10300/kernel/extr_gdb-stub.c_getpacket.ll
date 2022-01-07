; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mn10300/kernel/extr_gdb-stub.c_getpacket.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mn10300/kernel/extr_gdb-stub.c_getpacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BUFMAX = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"### GDB Rx Error - Skipping packet ###\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"### GDB Tx NAK\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"### GDB Rx Error - Skipping packet\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"### GDB Rx '$%s#%02x' ###\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"### GDB Tx ACK\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @getpacket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @getpacket(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  br label %10

10:                                               ; preds = %111, %102, %63, %52, %1
  br label %11

11:                                               ; preds = %13, %10
  %12 = call i32 @gdbstub_io_rx_char(i8* %5, i32 0)
  br label %13

13:                                               ; preds = %11
  %14 = load i8, i8* %5, align 1
  %15 = zext i8 %14 to i32
  %16 = icmp ne i32 %15, 36
  br i1 %16, label %11, label %17

17:                                               ; preds = %13
  store i8 0, i8* %3, align 1
  store i8 -1, i8* %4, align 1
  store i32 0, i32* %6, align 4
  store i32 0, i32* %9, align 4
  br label %18

18:                                               ; preds = %33, %17
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @BUFMAX, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %47

22:                                               ; preds = %18
  %23 = call i32 @gdbstub_io_rx_char(i8* %5, i32 0)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %9, align 4
  br label %28

28:                                               ; preds = %26, %22
  %29 = load i8, i8* %5, align 1
  %30 = zext i8 %29 to i32
  %31 = icmp eq i32 %30, 35
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  br label %47

33:                                               ; preds = %28
  %34 = load i8, i8* %5, align 1
  %35 = zext i8 %34 to i32
  %36 = load i8, i8* %3, align 1
  %37 = zext i8 %36 to i32
  %38 = add nsw i32 %37, %35
  %39 = trunc i32 %38 to i8
  store i8 %39, i8* %3, align 1
  %40 = load i8, i8* %5, align 1
  %41 = load i8*, i8** %2, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  store i8 %40, i8* %44, align 1
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %6, align 4
  br label %18

47:                                               ; preds = %32, %18
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @EIO, align 4
  %50 = sub nsw i32 0, %49
  %51 = icmp eq i32 %48, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = call i32 (i8*, ...) @gdbstub_proto(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %54 = call i32 (i8*, ...) @gdbstub_proto(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %55 = call i32 @gdbstub_io_tx_char(i8 signext 45)
  br label %10

56:                                               ; preds = %47
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @BUFMAX, align 4
  %59 = icmp sge i32 %57, %58
  br i1 %59, label %63, label %60

60:                                               ; preds = %56
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %60, %56
  br label %10

64:                                               ; preds = %60
  %65 = load i8*, i8** %2, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  store i8 0, i8* %68, align 1
  %69 = call i32 @gdbstub_io_rx_char(i8* %5, i32 0)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %64
  %73 = load i32, i32* %8, align 4
  store i32 %73, i32* %9, align 4
  br label %74

74:                                               ; preds = %72, %64
  %75 = load i8, i8* %5, align 1
  %76 = call zeroext i8 @hex(i8 zeroext %75)
  %77 = zext i8 %76 to i32
  %78 = shl i32 %77, 4
  %79 = trunc i32 %78 to i8
  store i8 %79, i8* %4, align 1
  %80 = call i32 @gdbstub_io_rx_char(i8* %5, i32 0)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %74
  %84 = load i32, i32* %8, align 4
  store i32 %84, i32* %9, align 4
  br label %85

85:                                               ; preds = %83, %74
  %86 = load i8, i8* %5, align 1
  %87 = call zeroext i8 @hex(i8 zeroext %86)
  %88 = zext i8 %87 to i32
  %89 = load i8, i8* %4, align 1
  %90 = zext i8 %89 to i32
  %91 = or i32 %90, %88
  %92 = trunc i32 %91 to i8
  store i8 %92, i8* %4, align 1
  %93 = load i32, i32* %9, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %105

95:                                               ; preds = %85
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* @EIO, align 4
  %98 = sub nsw i32 0, %97
  %99 = icmp eq i32 %96, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %95
  %101 = call i32 @gdbstub_io(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %102

102:                                              ; preds = %100, %95
  %103 = call i32 @gdbstub_io(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %104 = call i32 @gdbstub_io_tx_char(i8 signext 45)
  br label %10

105:                                              ; preds = %85
  %106 = load i8, i8* %3, align 1
  %107 = zext i8 %106 to i32
  %108 = load i8, i8* %4, align 1
  %109 = zext i8 %108 to i32
  %110 = icmp ne i32 %107, %109
  br i1 %110, label %111, label %114

111:                                              ; preds = %105
  %112 = call i32 @gdbstub_io(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %113 = call i32 @gdbstub_io_tx_char(i8 signext 45)
  br label %10

114:                                              ; preds = %105
  %115 = load i8*, i8** %2, align 8
  %116 = load i8, i8* %3, align 1
  %117 = zext i8 %116 to i32
  %118 = call i32 (i8*, ...) @gdbstub_proto(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8* %115, i32 %117)
  %119 = call i32 @gdbstub_io(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %120 = call i32 @gdbstub_io_tx_char(i8 signext 43)
  %121 = load i8*, i8** %2, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 2
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp eq i32 %124, 58
  br i1 %125, label %126, label %165

126:                                              ; preds = %114
  %127 = load i8*, i8** %2, align 8
  %128 = getelementptr inbounds i8, i8* %127, i64 0
  %129 = load i8, i8* %128, align 1
  %130 = call i32 @gdbstub_io_tx_char(i8 signext %129)
  %131 = load i8*, i8** %2, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 1
  %133 = load i8, i8* %132, align 1
  %134 = call i32 @gdbstub_io_tx_char(i8 signext %133)
  store i32 0, i32* %6, align 4
  br label %135

135:                                              ; preds = %142, %126
  %136 = load i8*, i8** %2, align 8
  %137 = load i32, i32* %6, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8, i8* %136, i64 %138
  %140 = load i8, i8* %139, align 1
  %141 = icmp ne i8 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %135
  %143 = load i32, i32* %6, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %6, align 4
  br label %135

145:                                              ; preds = %135
  store i32 3, i32* %7, align 4
  br label %146

146:                                              ; preds = %161, %145
  %147 = load i32, i32* %7, align 4
  %148 = load i32, i32* %6, align 4
  %149 = icmp sle i32 %147, %148
  br i1 %149, label %150, label %164

150:                                              ; preds = %146
  %151 = load i8*, i8** %2, align 8
  %152 = load i32, i32* %7, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8, i8* %151, i64 %153
  %155 = load i8, i8* %154, align 1
  %156 = load i8*, i8** %2, align 8
  %157 = load i32, i32* %7, align 4
  %158 = sub nsw i32 %157, 3
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i8, i8* %156, i64 %159
  store i8 %155, i8* %160, align 1
  br label %161

161:                                              ; preds = %150
  %162 = load i32, i32* %7, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %7, align 4
  br label %146

164:                                              ; preds = %146
  br label %165

165:                                              ; preds = %164, %114
  br label %166

166:                                              ; preds = %165
  ret void
}

declare dso_local i32 @gdbstub_io_rx_char(i8*, i32) #1

declare dso_local i32 @gdbstub_proto(i8*, ...) #1

declare dso_local i32 @gdbstub_io_tx_char(i8 signext) #1

declare dso_local zeroext i8 @hex(i8 zeroext) #1

declare dso_local i32 @gdbstub_io(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
