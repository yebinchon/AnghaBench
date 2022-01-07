; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_pmac_zilog.c_pmz_load_zsregs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_pmac_zilog.c_pmz_load_zsregs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_pmac_port = type { i32 }

@R1 = common dso_local global i64 0, align 8
@ALL_SNT = common dso_local global i8 0, align 1
@RxINT_MASK = common dso_local global i32 0, align 4
@TxINT_ENAB = common dso_local global i32 0, align 4
@EXT_INT_ENAB = common dso_local global i32 0, align 4
@R4 = common dso_local global i64 0, align 8
@R10 = common dso_local global i64 0, align 8
@R3 = common dso_local global i64 0, align 8
@RxENABLE = common dso_local global i32 0, align 4
@R5 = common dso_local global i64 0, align 8
@TxENABLE = common dso_local global i32 0, align 4
@R15 = common dso_local global i64 0, align 8
@EN85C30 = common dso_local global i32 0, align 4
@R7 = common dso_local global i64 0, align 8
@R7P = common dso_local global i64 0, align 8
@R6 = common dso_local global i64 0, align 8
@R14 = common dso_local global i64 0, align 8
@BRENAB = common dso_local global i32 0, align 4
@R11 = common dso_local global i64 0, align 8
@R12 = common dso_local global i64 0, align 8
@R13 = common dso_local global i64 0, align 8
@R0 = common dso_local global i64 0, align 8
@RES_EXT_INT = common dso_local global i32 0, align 4
@R9 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_pmac_port*, i32*)* @pmz_load_zsregs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmz_load_zsregs(%struct.uart_pmac_port* %0, i32* %1) #0 {
  %3 = alloca %struct.uart_pmac_port*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  store %struct.uart_pmac_port* %0, %struct.uart_pmac_port** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %8 = call i64 @ZS_IS_ASLEEP(%struct.uart_pmac_port* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %204

11:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %28, %11
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 1000
  br i1 %14, label %15, label %31

15:                                               ; preds = %12
  %16 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %17 = load i64, i64* @R1, align 8
  %18 = call zeroext i8 @read_zsreg(%struct.uart_pmac_port* %16, i64 %17)
  store i8 %18, i8* %6, align 1
  %19 = load i8, i8* %6, align 1
  %20 = zext i8 %19 to i32
  %21 = load i8, i8* @ALL_SNT, align 1
  %22 = zext i8 %21 to i32
  %23 = and i32 %20, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %15
  br label %31

26:                                               ; preds = %15
  %27 = call i32 @udelay(i32 100)
  br label %28

28:                                               ; preds = %26
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %5, align 4
  br label %12

31:                                               ; preds = %25, %12
  %32 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %33 = call i32 @ZS_CLEARERR(%struct.uart_pmac_port* %32)
  %34 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %35 = call i32 @zssync(%struct.uart_pmac_port* %34)
  %36 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %37 = call i32 @ZS_CLEARFIFO(%struct.uart_pmac_port* %36)
  %38 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %39 = call i32 @zssync(%struct.uart_pmac_port* %38)
  %40 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %41 = call i32 @ZS_CLEARERR(%struct.uart_pmac_port* %40)
  %42 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %43 = load i64, i64* @R1, align 8
  %44 = load i32*, i32** %4, align 8
  %45 = load i64, i64* @R1, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @RxINT_MASK, align 4
  %49 = load i32, i32* @TxINT_ENAB, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @EXT_INT_ENAB, align 4
  %52 = or i32 %50, %51
  %53 = xor i32 %52, -1
  %54 = and i32 %47, %53
  %55 = call i32 @write_zsreg(%struct.uart_pmac_port* %42, i64 %43, i32 %54)
  %56 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %57 = load i64, i64* @R4, align 8
  %58 = load i32*, i32** %4, align 8
  %59 = load i64, i64* @R4, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @write_zsreg(%struct.uart_pmac_port* %56, i64 %57, i32 %61)
  %63 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %64 = load i64, i64* @R10, align 8
  %65 = load i32*, i32** %4, align 8
  %66 = load i64, i64* @R10, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @write_zsreg(%struct.uart_pmac_port* %63, i64 %64, i32 %68)
  %70 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %71 = load i64, i64* @R3, align 8
  %72 = load i32*, i32** %4, align 8
  %73 = load i64, i64* @R3, align 8
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @RxENABLE, align 4
  %77 = xor i32 %76, -1
  %78 = and i32 %75, %77
  %79 = call i32 @write_zsreg(%struct.uart_pmac_port* %70, i64 %71, i32 %78)
  %80 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %81 = load i64, i64* @R5, align 8
  %82 = load i32*, i32** %4, align 8
  %83 = load i64, i64* @R5, align 8
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @TxENABLE, align 4
  %87 = xor i32 %86, -1
  %88 = and i32 %85, %87
  %89 = call i32 @write_zsreg(%struct.uart_pmac_port* %80, i64 %81, i32 %88)
  %90 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %91 = load i64, i64* @R15, align 8
  %92 = load i32*, i32** %4, align 8
  %93 = load i64, i64* @R15, align 8
  %94 = getelementptr inbounds i32, i32* %92, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @EN85C30, align 4
  %97 = or i32 %95, %96
  %98 = call i32 @write_zsreg(%struct.uart_pmac_port* %90, i64 %91, i32 %97)
  %99 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %100 = load i64, i64* @R7, align 8
  %101 = load i32*, i32** %4, align 8
  %102 = load i64, i64* @R7P, align 8
  %103 = getelementptr inbounds i32, i32* %101, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @write_zsreg(%struct.uart_pmac_port* %99, i64 %100, i32 %104)
  %106 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %107 = load i64, i64* @R15, align 8
  %108 = load i32*, i32** %4, align 8
  %109 = load i64, i64* @R15, align 8
  %110 = getelementptr inbounds i32, i32* %108, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @EN85C30, align 4
  %113 = xor i32 %112, -1
  %114 = and i32 %111, %113
  %115 = call i32 @write_zsreg(%struct.uart_pmac_port* %106, i64 %107, i32 %114)
  %116 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %117 = load i64, i64* @R6, align 8
  %118 = load i32*, i32** %4, align 8
  %119 = load i64, i64* @R6, align 8
  %120 = getelementptr inbounds i32, i32* %118, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @write_zsreg(%struct.uart_pmac_port* %116, i64 %117, i32 %121)
  %123 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %124 = load i64, i64* @R7, align 8
  %125 = load i32*, i32** %4, align 8
  %126 = load i64, i64* @R7, align 8
  %127 = getelementptr inbounds i32, i32* %125, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @write_zsreg(%struct.uart_pmac_port* %123, i64 %124, i32 %128)
  %130 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %131 = load i64, i64* @R14, align 8
  %132 = load i32*, i32** %4, align 8
  %133 = load i64, i64* @R14, align 8
  %134 = getelementptr inbounds i32, i32* %132, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @BRENAB, align 4
  %137 = xor i32 %136, -1
  %138 = and i32 %135, %137
  %139 = call i32 @write_zsreg(%struct.uart_pmac_port* %130, i64 %131, i32 %138)
  %140 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %141 = load i64, i64* @R11, align 8
  %142 = load i32*, i32** %4, align 8
  %143 = load i64, i64* @R11, align 8
  %144 = getelementptr inbounds i32, i32* %142, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @write_zsreg(%struct.uart_pmac_port* %140, i64 %141, i32 %145)
  %147 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %148 = load i64, i64* @R12, align 8
  %149 = load i32*, i32** %4, align 8
  %150 = load i64, i64* @R12, align 8
  %151 = getelementptr inbounds i32, i32* %149, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @write_zsreg(%struct.uart_pmac_port* %147, i64 %148, i32 %152)
  %154 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %155 = load i64, i64* @R13, align 8
  %156 = load i32*, i32** %4, align 8
  %157 = load i64, i64* @R13, align 8
  %158 = getelementptr inbounds i32, i32* %156, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @write_zsreg(%struct.uart_pmac_port* %154, i64 %155, i32 %159)
  %161 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %162 = load i64, i64* @R14, align 8
  %163 = load i32*, i32** %4, align 8
  %164 = load i64, i64* @R14, align 8
  %165 = getelementptr inbounds i32, i32* %163, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @write_zsreg(%struct.uart_pmac_port* %161, i64 %162, i32 %166)
  %168 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %169 = load i64, i64* @R0, align 8
  %170 = load i32, i32* @RES_EXT_INT, align 4
  %171 = call i32 @write_zsreg(%struct.uart_pmac_port* %168, i64 %169, i32 %170)
  %172 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %173 = load i64, i64* @R0, align 8
  %174 = load i32, i32* @RES_EXT_INT, align 4
  %175 = call i32 @write_zsreg(%struct.uart_pmac_port* %172, i64 %173, i32 %174)
  %176 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %177 = load i64, i64* @R3, align 8
  %178 = load i32*, i32** %4, align 8
  %179 = load i64, i64* @R3, align 8
  %180 = getelementptr inbounds i32, i32* %178, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @write_zsreg(%struct.uart_pmac_port* %176, i64 %177, i32 %181)
  %183 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %184 = load i64, i64* @R5, align 8
  %185 = load i32*, i32** %4, align 8
  %186 = load i64, i64* @R5, align 8
  %187 = getelementptr inbounds i32, i32* %185, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @write_zsreg(%struct.uart_pmac_port* %183, i64 %184, i32 %188)
  %190 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %191 = load i64, i64* @R1, align 8
  %192 = load i32*, i32** %4, align 8
  %193 = load i64, i64* @R1, align 8
  %194 = getelementptr inbounds i32, i32* %192, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @write_zsreg(%struct.uart_pmac_port* %190, i64 %191, i32 %195)
  %197 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %198 = load i64, i64* @R9, align 8
  %199 = load i32*, i32** %4, align 8
  %200 = load i64, i64* @R9, align 8
  %201 = getelementptr inbounds i32, i32* %199, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @write_zsreg(%struct.uart_pmac_port* %197, i64 %198, i32 %202)
  br label %204

204:                                              ; preds = %31, %10
  ret void
}

declare dso_local i64 @ZS_IS_ASLEEP(%struct.uart_pmac_port*) #1

declare dso_local zeroext i8 @read_zsreg(%struct.uart_pmac_port*, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @ZS_CLEARERR(%struct.uart_pmac_port*) #1

declare dso_local i32 @zssync(%struct.uart_pmac_port*) #1

declare dso_local i32 @ZS_CLEARFIFO(%struct.uart_pmac_port*) #1

declare dso_local i32 @write_zsreg(%struct.uart_pmac_port*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
