; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hisax_isac.c_isac_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hisax_isac.c_isac_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isac = type { i32, i32, i32 (%struct.isac*, i32)*, i32 (%struct.isac*, i32, i32)*, i32, i32, i32 }

@TYPE_ISAC = common dso_local global i32 0, align 4
@ISAC_CMD_RES = common dso_local global i32 0, align 4
@ISAC_MASK = common dso_local global i32 0, align 4
@ISAC_IOM1 = common dso_local global i32 0, align 4
@ISAC_ADF2 = common dso_local global i32 0, align 4
@ISAC_SPCR = common dso_local global i32 0, align 4
@ISAC_ADF1 = common dso_local global i32 0, align 4
@ISAC_STCR = common dso_local global i32 0, align 4
@ISAC_MODE = common dso_local global i32 0, align 4
@ISAC_SQXR = common dso_local global i32 0, align 4
@ISAC_TIMR = common dso_local global i32 0, align 4
@ISAC_STAR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"ISAC STAR %x\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"ISAC MODE %x\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"ISAC ADF2 %x\00", align 1
@ISAC_ISTA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"ISAC ISTA %x\00", align 1
@ISAC_EXIR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"ISAC EXIR %x\00", align 1
@ISAC_CIR0 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"ISAC CIR0 %x\00", align 1
@ISAC_CMDR = common dso_local global i32 0, align 4
@ISAC_CMDR_XRES = common dso_local global i32 0, align 4
@ISAC_CMDR_RRES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @isac_setup(%struct.isac* %0) #0 {
  %2 = alloca %struct.isac*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.isac* %0, %struct.isac** %2, align 8
  %5 = load i32, i32* @TYPE_ISAC, align 4
  %6 = load %struct.isac*, %struct.isac** %2, align 8
  %7 = getelementptr inbounds %struct.isac, %struct.isac* %6, i32 0, i32 6
  store i32 %5, i32* %7, align 8
  %8 = load %struct.isac*, %struct.isac** %2, align 8
  %9 = call i32 @isac_version(%struct.isac* %8)
  %10 = load %struct.isac*, %struct.isac** %2, align 8
  %11 = load i32, i32* @ISAC_CMD_RES, align 4
  %12 = call i32 @ph_command(%struct.isac* %10, i32 %11)
  %13 = load %struct.isac*, %struct.isac** %2, align 8
  %14 = getelementptr inbounds %struct.isac, %struct.isac* %13, i32 0, i32 3
  %15 = load i32 (%struct.isac*, i32, i32)*, i32 (%struct.isac*, i32, i32)** %14, align 8
  %16 = load %struct.isac*, %struct.isac** %2, align 8
  %17 = load i32, i32* @ISAC_MASK, align 4
  %18 = call i32 %15(%struct.isac* %16, i32 %17, i32 255)
  %19 = load %struct.isac*, %struct.isac** %2, align 8
  %20 = getelementptr inbounds %struct.isac, %struct.isac* %19, i32 0, i32 0
  store i32 170, i32* %20, align 8
  %21 = load i32, i32* @ISAC_IOM1, align 4
  %22 = load %struct.isac*, %struct.isac** %2, align 8
  %23 = getelementptr inbounds %struct.isac, %struct.isac* %22, i32 0, i32 5
  %24 = call i64 @test_bit(i32 %21, i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %57

26:                                               ; preds = %1
  %27 = load %struct.isac*, %struct.isac** %2, align 8
  %28 = getelementptr inbounds %struct.isac, %struct.isac* %27, i32 0, i32 3
  %29 = load i32 (%struct.isac*, i32, i32)*, i32 (%struct.isac*, i32, i32)** %28, align 8
  %30 = load %struct.isac*, %struct.isac** %2, align 8
  %31 = load i32, i32* @ISAC_ADF2, align 4
  %32 = call i32 %29(%struct.isac* %30, i32 %31, i32 0)
  %33 = load %struct.isac*, %struct.isac** %2, align 8
  %34 = getelementptr inbounds %struct.isac, %struct.isac* %33, i32 0, i32 3
  %35 = load i32 (%struct.isac*, i32, i32)*, i32 (%struct.isac*, i32, i32)** %34, align 8
  %36 = load %struct.isac*, %struct.isac** %2, align 8
  %37 = load i32, i32* @ISAC_SPCR, align 4
  %38 = call i32 %35(%struct.isac* %36, i32 %37, i32 10)
  %39 = load %struct.isac*, %struct.isac** %2, align 8
  %40 = getelementptr inbounds %struct.isac, %struct.isac* %39, i32 0, i32 3
  %41 = load i32 (%struct.isac*, i32, i32)*, i32 (%struct.isac*, i32, i32)** %40, align 8
  %42 = load %struct.isac*, %struct.isac** %2, align 8
  %43 = load i32, i32* @ISAC_ADF1, align 4
  %44 = call i32 %41(%struct.isac* %42, i32 %43, i32 2)
  %45 = load %struct.isac*, %struct.isac** %2, align 8
  %46 = getelementptr inbounds %struct.isac, %struct.isac* %45, i32 0, i32 3
  %47 = load i32 (%struct.isac*, i32, i32)*, i32 (%struct.isac*, i32, i32)** %46, align 8
  %48 = load %struct.isac*, %struct.isac** %2, align 8
  %49 = load i32, i32* @ISAC_STCR, align 4
  %50 = call i32 %47(%struct.isac* %48, i32 %49, i32 112)
  %51 = load %struct.isac*, %struct.isac** %2, align 8
  %52 = getelementptr inbounds %struct.isac, %struct.isac* %51, i32 0, i32 3
  %53 = load i32 (%struct.isac*, i32, i32)*, i32 (%struct.isac*, i32, i32)** %52, align 8
  %54 = load %struct.isac*, %struct.isac** %2, align 8
  %55 = load i32, i32* @ISAC_MODE, align 4
  %56 = call i32 %53(%struct.isac* %54, i32 %55, i32 201)
  br label %111

57:                                               ; preds = %1
  %58 = load %struct.isac*, %struct.isac** %2, align 8
  %59 = getelementptr inbounds %struct.isac, %struct.isac* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %57
  %63 = load %struct.isac*, %struct.isac** %2, align 8
  %64 = getelementptr inbounds %struct.isac, %struct.isac* %63, i32 0, i32 1
  store i32 128, i32* %64, align 4
  br label %65

65:                                               ; preds = %62, %57
  %66 = load %struct.isac*, %struct.isac** %2, align 8
  %67 = getelementptr inbounds %struct.isac, %struct.isac* %66, i32 0, i32 3
  %68 = load i32 (%struct.isac*, i32, i32)*, i32 (%struct.isac*, i32, i32)** %67, align 8
  %69 = load %struct.isac*, %struct.isac** %2, align 8
  %70 = load i32, i32* @ISAC_ADF2, align 4
  %71 = load %struct.isac*, %struct.isac** %2, align 8
  %72 = getelementptr inbounds %struct.isac, %struct.isac* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 %68(%struct.isac* %69, i32 %70, i32 %73)
  %75 = load %struct.isac*, %struct.isac** %2, align 8
  %76 = getelementptr inbounds %struct.isac, %struct.isac* %75, i32 0, i32 3
  %77 = load i32 (%struct.isac*, i32, i32)*, i32 (%struct.isac*, i32, i32)** %76, align 8
  %78 = load %struct.isac*, %struct.isac** %2, align 8
  %79 = load i32, i32* @ISAC_SQXR, align 4
  %80 = call i32 %77(%struct.isac* %78, i32 %79, i32 47)
  %81 = load %struct.isac*, %struct.isac** %2, align 8
  %82 = getelementptr inbounds %struct.isac, %struct.isac* %81, i32 0, i32 3
  %83 = load i32 (%struct.isac*, i32, i32)*, i32 (%struct.isac*, i32, i32)** %82, align 8
  %84 = load %struct.isac*, %struct.isac** %2, align 8
  %85 = load i32, i32* @ISAC_SPCR, align 4
  %86 = call i32 %83(%struct.isac* %84, i32 %85, i32 0)
  %87 = load %struct.isac*, %struct.isac** %2, align 8
  %88 = getelementptr inbounds %struct.isac, %struct.isac* %87, i32 0, i32 3
  %89 = load i32 (%struct.isac*, i32, i32)*, i32 (%struct.isac*, i32, i32)** %88, align 8
  %90 = load %struct.isac*, %struct.isac** %2, align 8
  %91 = load i32, i32* @ISAC_STCR, align 4
  %92 = call i32 %89(%struct.isac* %90, i32 %91, i32 112)
  %93 = load %struct.isac*, %struct.isac** %2, align 8
  %94 = getelementptr inbounds %struct.isac, %struct.isac* %93, i32 0, i32 3
  %95 = load i32 (%struct.isac*, i32, i32)*, i32 (%struct.isac*, i32, i32)** %94, align 8
  %96 = load %struct.isac*, %struct.isac** %2, align 8
  %97 = load i32, i32* @ISAC_MODE, align 4
  %98 = call i32 %95(%struct.isac* %96, i32 %97, i32 201)
  %99 = load %struct.isac*, %struct.isac** %2, align 8
  %100 = getelementptr inbounds %struct.isac, %struct.isac* %99, i32 0, i32 3
  %101 = load i32 (%struct.isac*, i32, i32)*, i32 (%struct.isac*, i32, i32)** %100, align 8
  %102 = load %struct.isac*, %struct.isac** %2, align 8
  %103 = load i32, i32* @ISAC_TIMR, align 4
  %104 = call i32 %101(%struct.isac* %102, i32 %103, i32 0)
  %105 = load %struct.isac*, %struct.isac** %2, align 8
  %106 = getelementptr inbounds %struct.isac, %struct.isac* %105, i32 0, i32 3
  %107 = load i32 (%struct.isac*, i32, i32)*, i32 (%struct.isac*, i32, i32)** %106, align 8
  %108 = load %struct.isac*, %struct.isac** %2, align 8
  %109 = load i32, i32* @ISAC_ADF1, align 4
  %110 = call i32 %107(%struct.isac* %108, i32 %109, i32 0)
  br label %111

111:                                              ; preds = %65, %26
  %112 = load %struct.isac*, %struct.isac** %2, align 8
  %113 = getelementptr inbounds %struct.isac, %struct.isac* %112, i32 0, i32 2
  %114 = load i32 (%struct.isac*, i32)*, i32 (%struct.isac*, i32)** %113, align 8
  %115 = load %struct.isac*, %struct.isac** %2, align 8
  %116 = load i32, i32* @ISAC_STAR, align 4
  %117 = call i32 %114(%struct.isac* %115, i32 %116)
  store i32 %117, i32* %3, align 4
  %118 = load i32, i32* %3, align 4
  %119 = call i32 @DBG(i32 2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %118)
  %120 = load %struct.isac*, %struct.isac** %2, align 8
  %121 = getelementptr inbounds %struct.isac, %struct.isac* %120, i32 0, i32 2
  %122 = load i32 (%struct.isac*, i32)*, i32 (%struct.isac*, i32)** %121, align 8
  %123 = load %struct.isac*, %struct.isac** %2, align 8
  %124 = load i32, i32* @ISAC_MODE, align 4
  %125 = call i32 %122(%struct.isac* %123, i32 %124)
  store i32 %125, i32* %3, align 4
  %126 = load i32, i32* %3, align 4
  %127 = call i32 @DBG(i32 2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %126)
  %128 = load %struct.isac*, %struct.isac** %2, align 8
  %129 = getelementptr inbounds %struct.isac, %struct.isac* %128, i32 0, i32 2
  %130 = load i32 (%struct.isac*, i32)*, i32 (%struct.isac*, i32)** %129, align 8
  %131 = load %struct.isac*, %struct.isac** %2, align 8
  %132 = load i32, i32* @ISAC_ADF2, align 4
  %133 = call i32 %130(%struct.isac* %131, i32 %132)
  store i32 %133, i32* %3, align 4
  %134 = load i32, i32* %3, align 4
  %135 = call i32 @DBG(i32 2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %134)
  %136 = load %struct.isac*, %struct.isac** %2, align 8
  %137 = getelementptr inbounds %struct.isac, %struct.isac* %136, i32 0, i32 2
  %138 = load i32 (%struct.isac*, i32)*, i32 (%struct.isac*, i32)** %137, align 8
  %139 = load %struct.isac*, %struct.isac** %2, align 8
  %140 = load i32, i32* @ISAC_ISTA, align 4
  %141 = call i32 %138(%struct.isac* %139, i32 %140)
  store i32 %141, i32* %3, align 4
  %142 = load i32, i32* %3, align 4
  %143 = call i32 @DBG(i32 2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %142)
  %144 = load i32, i32* %3, align 4
  %145 = and i32 %144, 1
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %156

147:                                              ; preds = %111
  %148 = load %struct.isac*, %struct.isac** %2, align 8
  %149 = getelementptr inbounds %struct.isac, %struct.isac* %148, i32 0, i32 2
  %150 = load i32 (%struct.isac*, i32)*, i32 (%struct.isac*, i32)** %149, align 8
  %151 = load %struct.isac*, %struct.isac** %2, align 8
  %152 = load i32, i32* @ISAC_EXIR, align 4
  %153 = call i32 %150(%struct.isac* %151, i32 %152)
  store i32 %153, i32* %4, align 4
  %154 = load i32, i32* %4, align 4
  %155 = call i32 @DBG(i32 2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %154)
  br label %156

156:                                              ; preds = %147, %111
  %157 = load %struct.isac*, %struct.isac** %2, align 8
  %158 = getelementptr inbounds %struct.isac, %struct.isac* %157, i32 0, i32 2
  %159 = load i32 (%struct.isac*, i32)*, i32 (%struct.isac*, i32)** %158, align 8
  %160 = load %struct.isac*, %struct.isac** %2, align 8
  %161 = load i32, i32* @ISAC_CIR0, align 4
  %162 = call i32 %159(%struct.isac* %160, i32 %161)
  store i32 %162, i32* %3, align 4
  %163 = load i32, i32* %3, align 4
  %164 = call i32 @DBG(i32 2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %163)
  %165 = load %struct.isac*, %struct.isac** %2, align 8
  %166 = getelementptr inbounds %struct.isac, %struct.isac* %165, i32 0, i32 4
  %167 = load i32, i32* %3, align 4
  %168 = ashr i32 %167, 2
  %169 = and i32 %168, 15
  %170 = call i32 @FsmEvent(i32* %166, i32 %169, i32* null)
  %171 = load %struct.isac*, %struct.isac** %2, align 8
  %172 = getelementptr inbounds %struct.isac, %struct.isac* %171, i32 0, i32 3
  %173 = load i32 (%struct.isac*, i32, i32)*, i32 (%struct.isac*, i32, i32)** %172, align 8
  %174 = load %struct.isac*, %struct.isac** %2, align 8
  %175 = load i32, i32* @ISAC_MASK, align 4
  %176 = call i32 %173(%struct.isac* %174, i32 %175, i32 0)
  %177 = load %struct.isac*, %struct.isac** %2, align 8
  %178 = getelementptr inbounds %struct.isac, %struct.isac* %177, i32 0, i32 3
  %179 = load i32 (%struct.isac*, i32, i32)*, i32 (%struct.isac*, i32, i32)** %178, align 8
  %180 = load %struct.isac*, %struct.isac** %2, align 8
  %181 = load i32, i32* @ISAC_CMDR, align 4
  %182 = load i32, i32* @ISAC_CMDR_XRES, align 4
  %183 = load i32, i32* @ISAC_CMDR_RRES, align 4
  %184 = or i32 %182, %183
  %185 = call i32 %179(%struct.isac* %180, i32 %181, i32 %184)
  ret void
}

declare dso_local i32 @isac_version(%struct.isac*) #1

declare dso_local i32 @ph_command(%struct.isac*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @DBG(i32, i8*, i32) #1

declare dso_local i32 @FsmEvent(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
