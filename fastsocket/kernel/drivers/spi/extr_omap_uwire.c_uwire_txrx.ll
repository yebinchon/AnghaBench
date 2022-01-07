; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_omap_uwire.c_uwire_txrx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_omap_uwire.c_uwire_txrx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32, %struct.uwire_state* }
%struct.uwire_state = type { i32 }
%struct.spi_transfer = type { i32, i32*, i32* }

@EPERM = common dso_local global i32 0, align 4
@CS_CMD = common dso_local global i32 0, align 4
@CSRB = common dso_local global i32 0, align 4
@UWIRE_TDR = common dso_local global i32 0, align 4
@START = common dso_local global i32 0, align 4
@UWIRE_CSR = common dso_local global i32 0, align 4
@RDRB = common dso_local global i32 0, align 4
@UWIRE_RDR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*, %struct.spi_transfer*)* @uwire_txrx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uwire_txrx(%struct.spi_device* %0, %struct.spi_transfer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spi_device*, align 8
  %5 = alloca %struct.spi_transfer*, align 8
  %6 = alloca %struct.uwire_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %4, align 8
  store %struct.spi_transfer* %1, %struct.spi_transfer** %5, align 8
  %15 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %16 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %15, i32 0, i32 2
  %17 = load %struct.uwire_state*, %struct.uwire_state** %16, align 8
  store %struct.uwire_state* %17, %struct.uwire_state** %6, align 8
  %18 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %19 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %7, align 4
  %21 = load %struct.uwire_state*, %struct.uwire_state** %6, align 8
  %22 = getelementptr inbounds %struct.uwire_state, %struct.uwire_state* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %8, align 4
  store i32 0, i32* %12, align 4
  %24 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %25 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %2
  %29 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %30 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %189

34:                                               ; preds = %28, %2
  %35 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %36 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %47

39:                                               ; preds = %34
  %40 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %41 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32, i32* @EPERM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %189

47:                                               ; preds = %39, %34
  %48 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %49 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = shl i32 %50, 10
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* @CS_CMD, align 4
  %53 = load i32, i32* %11, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %11, align 4
  %55 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %56 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %120

59:                                               ; preds = %47
  %60 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %61 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  store i32* %62, i32** %13, align 8
  br label %63

63:                                               ; preds = %110, %59
  %64 = load i32, i32* %7, align 4
  %65 = icmp uge i32 %64, 1
  br i1 %65, label %66, label %114

66:                                               ; preds = %63
  %67 = load i32*, i32** %13, align 8
  %68 = getelementptr inbounds i32, i32* %67, i32 1
  store i32* %68, i32** %13, align 8
  %69 = load i32, i32* %67, align 4
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp ugt i32 %70, 8
  br i1 %71, label %72, label %79

72:                                               ; preds = %66
  store i32 2, i32* %9, align 4
  %73 = load i32*, i32** %13, align 8
  %74 = getelementptr inbounds i32, i32* %73, i32 1
  store i32* %74, i32** %13, align 8
  %75 = load i32, i32* %73, align 4
  %76 = shl i32 %75, 8
  %77 = load i32, i32* %10, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %10, align 4
  br label %80

79:                                               ; preds = %66
  store i32 1, i32* %9, align 4
  br label %80

80:                                               ; preds = %79, %72
  %81 = load i32, i32* %8, align 4
  %82 = sub i32 16, %81
  %83 = load i32, i32* %10, align 4
  %84 = shl i32 %83, %82
  store i32 %84, i32* %10, align 4
  %85 = load i32, i32* @CSRB, align 4
  %86 = call i64 @wait_uwire_csr_flag(i32 %85, i32 0, i32 0)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %80
  br label %186

89:                                               ; preds = %80
  %90 = load i32, i32* @UWIRE_TDR, align 4
  %91 = load i32, i32* %10, align 4
  %92 = call i32 @uwire_write_reg(i32 %90, i32 %91)
  %93 = load i32, i32* @START, align 4
  %94 = load i32, i32* %11, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* %8, align 4
  %97 = shl i32 %96, 5
  %98 = or i32 %95, %97
  store i32 %98, i32* %10, align 4
  %99 = load i32, i32* @UWIRE_CSR, align 4
  %100 = load i32, i32* %10, align 4
  %101 = call i32 @uwire_write_reg(i32 %99, i32 %100)
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* %7, align 4
  %104 = sub i32 %103, %102
  store i32 %104, i32* %7, align 4
  %105 = load i32, i32* @CSRB, align 4
  %106 = load i32, i32* @CSRB, align 4
  %107 = call i64 @wait_uwire_csr_flag(i32 %105, i32 %106, i32 1)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %89
  br label %186

110:                                              ; preds = %89
  %111 = load i32, i32* %9, align 4
  %112 = load i32, i32* %12, align 4
  %113 = add i32 %112, %111
  store i32 %113, i32* %12, align 4
  br label %63

114:                                              ; preds = %63
  %115 = load i32, i32* @CSRB, align 4
  %116 = call i64 @wait_uwire_csr_flag(i32 %115, i32 0, i32 0)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %114
  br label %186

119:                                              ; preds = %114
  br label %184

120:                                              ; preds = %47
  %121 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %122 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %121, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  %124 = icmp ne i32* %123, null
  br i1 %124, label %125, label %183

125:                                              ; preds = %120
  %126 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %127 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %126, i32 0, i32 1
  %128 = load i32*, i32** %127, align 8
  store i32* %128, i32** %14, align 8
  br label %129

129:                                              ; preds = %178, %125
  %130 = load i32, i32* %7, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %182

132:                                              ; preds = %129
  %133 = load i32, i32* %8, align 4
  %134 = icmp ugt i32 %133, 8
  br i1 %134, label %135, label %136

135:                                              ; preds = %132
  store i32 2, i32* %9, align 4
  br label %137

136:                                              ; preds = %132
  store i32 1, i32* %9, align 4
  br label %137

137:                                              ; preds = %136, %135
  %138 = load i32, i32* @START, align 4
  %139 = load i32, i32* %11, align 4
  %140 = or i32 %138, %139
  %141 = load i32, i32* %8, align 4
  %142 = shl i32 %141, 0
  %143 = or i32 %140, %142
  store i32 %143, i32* %10, align 4
  %144 = load i32, i32* @UWIRE_CSR, align 4
  %145 = load i32, i32* %10, align 4
  %146 = call i32 @uwire_write_reg(i32 %144, i32 %145)
  %147 = load i32, i32* %9, align 4
  %148 = load i32, i32* %7, align 4
  %149 = sub i32 %148, %147
  store i32 %149, i32* %7, align 4
  %150 = load i32, i32* @CSRB, align 4
  %151 = load i32, i32* @CSRB, align 4
  %152 = call i64 @wait_uwire_csr_flag(i32 %150, i32 %151, i32 1)
  %153 = load i32, i32* @RDRB, align 4
  %154 = load i32, i32* @CSRB, align 4
  %155 = or i32 %153, %154
  %156 = load i32, i32* @RDRB, align 4
  %157 = call i64 @wait_uwire_csr_flag(i32 %155, i32 %156, i32 0)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %137
  br label %186

160:                                              ; preds = %137
  %161 = load i32, i32* @UWIRE_RDR, align 4
  %162 = call i32 @uwire_read_reg(i32 %161)
  store i32 %162, i32* %10, align 4
  %163 = load i32, i32* %8, align 4
  %164 = shl i32 1, %163
  %165 = sub nsw i32 %164, 1
  %166 = load i32, i32* %10, align 4
  %167 = and i32 %166, %165
  store i32 %167, i32* %10, align 4
  %168 = load i32, i32* %10, align 4
  %169 = load i32*, i32** %14, align 8
  %170 = getelementptr inbounds i32, i32* %169, i32 1
  store i32* %170, i32** %14, align 8
  store i32 %168, i32* %169, align 4
  %171 = load i32, i32* %9, align 4
  %172 = icmp eq i32 %171, 2
  br i1 %172, label %173, label %178

173:                                              ; preds = %160
  %174 = load i32, i32* %10, align 4
  %175 = ashr i32 %174, 8
  %176 = load i32*, i32** %14, align 8
  %177 = getelementptr inbounds i32, i32* %176, i32 1
  store i32* %177, i32** %14, align 8
  store i32 %175, i32* %176, align 4
  br label %178

178:                                              ; preds = %173, %160
  %179 = load i32, i32* %9, align 4
  %180 = load i32, i32* %12, align 4
  %181 = add i32 %180, %179
  store i32 %181, i32* %12, align 4
  br label %129

182:                                              ; preds = %129
  br label %183

183:                                              ; preds = %182, %120
  br label %184

184:                                              ; preds = %183, %119
  %185 = load i32, i32* %12, align 4
  store i32 %185, i32* %3, align 4
  br label %189

186:                                              ; preds = %159, %118, %109, %88
  %187 = load i32, i32* @EIO, align 4
  %188 = sub nsw i32 0, %187
  store i32 %188, i32* %3, align 4
  br label %189

189:                                              ; preds = %186, %184, %44, %33
  %190 = load i32, i32* %3, align 4
  ret i32 %190
}

declare dso_local i64 @wait_uwire_csr_flag(i32, i32, i32) #1

declare dso_local i32 @uwire_write_reg(i32, i32) #1

declare dso_local i32 @uwire_read_reg(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
