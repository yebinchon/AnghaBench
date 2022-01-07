; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_ip22zilog.c___load_zsregs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_ip22zilog.c___load_zsregs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zilog_channel = type { i32 }

@R1 = common dso_local global i64 0, align 8
@ALL_SNT = common dso_local global i8 0, align 1
@ERR_RES = common dso_local global i32 0, align 4
@RxINT_MASK = common dso_local global i8 0, align 1
@TxINT_ENAB = common dso_local global i8 0, align 1
@EXT_INT_ENAB = common dso_local global i8 0, align 1
@R4 = common dso_local global i64 0, align 8
@R10 = common dso_local global i64 0, align 8
@R3 = common dso_local global i64 0, align 8
@RxENAB = common dso_local global i8 0, align 1
@R5 = common dso_local global i64 0, align 8
@TxENAB = common dso_local global i8 0, align 1
@R6 = common dso_local global i64 0, align 8
@R7 = common dso_local global i64 0, align 8
@R14 = common dso_local global i64 0, align 8
@BRENAB = common dso_local global i8 0, align 1
@R11 = common dso_local global i64 0, align 8
@R12 = common dso_local global i64 0, align 8
@R13 = common dso_local global i64 0, align 8
@R15 = common dso_local global i64 0, align 8
@R0 = common dso_local global i64 0, align 8
@RES_EXT_INT = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zilog_channel*, i8*)* @__load_zsregs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__load_zsregs(%struct.zilog_channel* %0, i8* %1) #0 {
  %3 = alloca %struct.zilog_channel*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  store %struct.zilog_channel* %0, %struct.zilog_channel** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %23, %2
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 1000
  br i1 %9, label %10, label %26

10:                                               ; preds = %7
  %11 = load %struct.zilog_channel*, %struct.zilog_channel** %3, align 8
  %12 = load i64, i64* @R1, align 8
  %13 = call zeroext i8 @read_zsreg(%struct.zilog_channel* %11, i64 %12)
  store i8 %13, i8* %6, align 1
  %14 = load i8, i8* %6, align 1
  %15 = zext i8 %14 to i32
  %16 = load i8, i8* @ALL_SNT, align 1
  %17 = zext i8 %16 to i32
  %18 = and i32 %15, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %10
  br label %26

21:                                               ; preds = %10
  %22 = call i32 @udelay(i32 100)
  br label %23

23:                                               ; preds = %21
  %24 = load i32, i32* %5, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %5, align 4
  br label %7

26:                                               ; preds = %20, %7
  %27 = load i32, i32* @ERR_RES, align 4
  %28 = load %struct.zilog_channel*, %struct.zilog_channel** %3, align 8
  %29 = getelementptr inbounds %struct.zilog_channel, %struct.zilog_channel* %28, i32 0, i32 0
  %30 = call i32 @writeb(i32 %27, i32* %29)
  %31 = call i32 (...) @ZSDELAY()
  %32 = load %struct.zilog_channel*, %struct.zilog_channel** %3, align 8
  %33 = call i32 @ZS_WSYNC(%struct.zilog_channel* %32)
  %34 = load %struct.zilog_channel*, %struct.zilog_channel** %3, align 8
  %35 = call i32 @ip22zilog_clear_fifo(%struct.zilog_channel* %34)
  %36 = load %struct.zilog_channel*, %struct.zilog_channel** %3, align 8
  %37 = load i64, i64* @R1, align 8
  %38 = load i8*, i8** %4, align 8
  %39 = load i64, i64* @R1, align 8
  %40 = getelementptr inbounds i8, i8* %38, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = load i8, i8* @RxINT_MASK, align 1
  %44 = zext i8 %43 to i32
  %45 = load i8, i8* @TxINT_ENAB, align 1
  %46 = zext i8 %45 to i32
  %47 = or i32 %44, %46
  %48 = load i8, i8* @EXT_INT_ENAB, align 1
  %49 = zext i8 %48 to i32
  %50 = or i32 %47, %49
  %51 = xor i32 %50, -1
  %52 = and i32 %42, %51
  %53 = trunc i32 %52 to i8
  %54 = call i32 @write_zsreg(%struct.zilog_channel* %36, i64 %37, i8 zeroext %53)
  %55 = load %struct.zilog_channel*, %struct.zilog_channel** %3, align 8
  %56 = load i64, i64* @R4, align 8
  %57 = load i8*, i8** %4, align 8
  %58 = load i64, i64* @R4, align 8
  %59 = getelementptr inbounds i8, i8* %57, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = call i32 @write_zsreg(%struct.zilog_channel* %55, i64 %56, i8 zeroext %60)
  %62 = load %struct.zilog_channel*, %struct.zilog_channel** %3, align 8
  %63 = load i64, i64* @R10, align 8
  %64 = load i8*, i8** %4, align 8
  %65 = load i64, i64* @R10, align 8
  %66 = getelementptr inbounds i8, i8* %64, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = call i32 @write_zsreg(%struct.zilog_channel* %62, i64 %63, i8 zeroext %67)
  %69 = load %struct.zilog_channel*, %struct.zilog_channel** %3, align 8
  %70 = load i64, i64* @R3, align 8
  %71 = load i8*, i8** %4, align 8
  %72 = load i64, i64* @R3, align 8
  %73 = getelementptr inbounds i8, i8* %71, i64 %72
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i32
  %76 = load i8, i8* @RxENAB, align 1
  %77 = zext i8 %76 to i32
  %78 = xor i32 %77, -1
  %79 = and i32 %75, %78
  %80 = trunc i32 %79 to i8
  %81 = call i32 @write_zsreg(%struct.zilog_channel* %69, i64 %70, i8 zeroext %80)
  %82 = load %struct.zilog_channel*, %struct.zilog_channel** %3, align 8
  %83 = load i64, i64* @R5, align 8
  %84 = load i8*, i8** %4, align 8
  %85 = load i64, i64* @R5, align 8
  %86 = getelementptr inbounds i8, i8* %84, i64 %85
  %87 = load i8, i8* %86, align 1
  %88 = zext i8 %87 to i32
  %89 = load i8, i8* @TxENAB, align 1
  %90 = zext i8 %89 to i32
  %91 = xor i32 %90, -1
  %92 = and i32 %88, %91
  %93 = trunc i32 %92 to i8
  %94 = call i32 @write_zsreg(%struct.zilog_channel* %82, i64 %83, i8 zeroext %93)
  %95 = load %struct.zilog_channel*, %struct.zilog_channel** %3, align 8
  %96 = load i64, i64* @R6, align 8
  %97 = load i8*, i8** %4, align 8
  %98 = load i64, i64* @R6, align 8
  %99 = getelementptr inbounds i8, i8* %97, i64 %98
  %100 = load i8, i8* %99, align 1
  %101 = call i32 @write_zsreg(%struct.zilog_channel* %95, i64 %96, i8 zeroext %100)
  %102 = load %struct.zilog_channel*, %struct.zilog_channel** %3, align 8
  %103 = load i64, i64* @R7, align 8
  %104 = load i8*, i8** %4, align 8
  %105 = load i64, i64* @R7, align 8
  %106 = getelementptr inbounds i8, i8* %104, i64 %105
  %107 = load i8, i8* %106, align 1
  %108 = call i32 @write_zsreg(%struct.zilog_channel* %102, i64 %103, i8 zeroext %107)
  %109 = load %struct.zilog_channel*, %struct.zilog_channel** %3, align 8
  %110 = load i64, i64* @R14, align 8
  %111 = load i8*, i8** %4, align 8
  %112 = load i64, i64* @R14, align 8
  %113 = getelementptr inbounds i8, i8* %111, i64 %112
  %114 = load i8, i8* %113, align 1
  %115 = zext i8 %114 to i32
  %116 = load i8, i8* @BRENAB, align 1
  %117 = zext i8 %116 to i32
  %118 = xor i32 %117, -1
  %119 = and i32 %115, %118
  %120 = trunc i32 %119 to i8
  %121 = call i32 @write_zsreg(%struct.zilog_channel* %109, i64 %110, i8 zeroext %120)
  %122 = load %struct.zilog_channel*, %struct.zilog_channel** %3, align 8
  %123 = load i64, i64* @R11, align 8
  %124 = load i8*, i8** %4, align 8
  %125 = load i64, i64* @R11, align 8
  %126 = getelementptr inbounds i8, i8* %124, i64 %125
  %127 = load i8, i8* %126, align 1
  %128 = call i32 @write_zsreg(%struct.zilog_channel* %122, i64 %123, i8 zeroext %127)
  %129 = load %struct.zilog_channel*, %struct.zilog_channel** %3, align 8
  %130 = load i64, i64* @R12, align 8
  %131 = load i8*, i8** %4, align 8
  %132 = load i64, i64* @R12, align 8
  %133 = getelementptr inbounds i8, i8* %131, i64 %132
  %134 = load i8, i8* %133, align 1
  %135 = call i32 @write_zsreg(%struct.zilog_channel* %129, i64 %130, i8 zeroext %134)
  %136 = load %struct.zilog_channel*, %struct.zilog_channel** %3, align 8
  %137 = load i64, i64* @R13, align 8
  %138 = load i8*, i8** %4, align 8
  %139 = load i64, i64* @R13, align 8
  %140 = getelementptr inbounds i8, i8* %138, i64 %139
  %141 = load i8, i8* %140, align 1
  %142 = call i32 @write_zsreg(%struct.zilog_channel* %136, i64 %137, i8 zeroext %141)
  %143 = load %struct.zilog_channel*, %struct.zilog_channel** %3, align 8
  %144 = load i64, i64* @R14, align 8
  %145 = load i8*, i8** %4, align 8
  %146 = load i64, i64* @R14, align 8
  %147 = getelementptr inbounds i8, i8* %145, i64 %146
  %148 = load i8, i8* %147, align 1
  %149 = call i32 @write_zsreg(%struct.zilog_channel* %143, i64 %144, i8 zeroext %148)
  %150 = load %struct.zilog_channel*, %struct.zilog_channel** %3, align 8
  %151 = load i64, i64* @R15, align 8
  %152 = load i8*, i8** %4, align 8
  %153 = load i64, i64* @R15, align 8
  %154 = getelementptr inbounds i8, i8* %152, i64 %153
  %155 = load i8, i8* %154, align 1
  %156 = call i32 @write_zsreg(%struct.zilog_channel* %150, i64 %151, i8 zeroext %155)
  %157 = load %struct.zilog_channel*, %struct.zilog_channel** %3, align 8
  %158 = load i64, i64* @R0, align 8
  %159 = load i8, i8* @RES_EXT_INT, align 1
  %160 = call i32 @write_zsreg(%struct.zilog_channel* %157, i64 %158, i8 zeroext %159)
  %161 = load %struct.zilog_channel*, %struct.zilog_channel** %3, align 8
  %162 = load i64, i64* @R0, align 8
  %163 = load i8, i8* @RES_EXT_INT, align 1
  %164 = call i32 @write_zsreg(%struct.zilog_channel* %161, i64 %162, i8 zeroext %163)
  %165 = load %struct.zilog_channel*, %struct.zilog_channel** %3, align 8
  %166 = load i64, i64* @R3, align 8
  %167 = load i8*, i8** %4, align 8
  %168 = load i64, i64* @R3, align 8
  %169 = getelementptr inbounds i8, i8* %167, i64 %168
  %170 = load i8, i8* %169, align 1
  %171 = call i32 @write_zsreg(%struct.zilog_channel* %165, i64 %166, i8 zeroext %170)
  %172 = load %struct.zilog_channel*, %struct.zilog_channel** %3, align 8
  %173 = load i64, i64* @R5, align 8
  %174 = load i8*, i8** %4, align 8
  %175 = load i64, i64* @R5, align 8
  %176 = getelementptr inbounds i8, i8* %174, i64 %175
  %177 = load i8, i8* %176, align 1
  %178 = call i32 @write_zsreg(%struct.zilog_channel* %172, i64 %173, i8 zeroext %177)
  %179 = load %struct.zilog_channel*, %struct.zilog_channel** %3, align 8
  %180 = load i64, i64* @R1, align 8
  %181 = load i8*, i8** %4, align 8
  %182 = load i64, i64* @R1, align 8
  %183 = getelementptr inbounds i8, i8* %181, i64 %182
  %184 = load i8, i8* %183, align 1
  %185 = call i32 @write_zsreg(%struct.zilog_channel* %179, i64 %180, i8 zeroext %184)
  ret void
}

declare dso_local zeroext i8 @read_zsreg(%struct.zilog_channel*, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @writeb(i32, i32*) #1

declare dso_local i32 @ZSDELAY(...) #1

declare dso_local i32 @ZS_WSYNC(%struct.zilog_channel*) #1

declare dso_local i32 @ip22zilog_clear_fifo(%struct.zilog_channel*) #1

declare dso_local i32 @write_zsreg(%struct.zilog_channel*, i64, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
