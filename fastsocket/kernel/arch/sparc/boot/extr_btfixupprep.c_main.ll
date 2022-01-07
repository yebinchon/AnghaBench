; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/boot/extr_btfixupprep.c_main.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/boot/extr_btfixupprep.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i8*, i8*, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i8*, i32, %struct.TYPE_7__*, %struct.TYPE_6__* }

@symtab = common dso_local global i8* null, align 8
@symlen = common dso_local global i32 0, align 4
@buffer = common dso_local global i8* null, align 8
@stdin = common dso_local global i32 0, align 4
@relrec = common dso_local global i8* null, align 8
@rellen = common dso_local global i32 0, align 4
@mode = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c" R_SPARC_\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c".init.text\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [99 x i8] c"Wrong use of '%s' BTFIXUPSET in '%s' section.\0ABTFIXUPSET_CALL can be used only in __init sections\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c".text.exit\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c".text\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c".fixup\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"__ksymtab\00", align 1
@.str.7 = private unnamed_addr constant [100 x i8] c"Wrong use of '%s' in '%s' section.\0A It can be used only in .text, .init.text, .fixup and __ksymtab\0A\00", align 1
@.str.8 = private unnamed_addr constant [90 x i8] c"Wrong use of '%s' in '%s' section.\0A It can be only used in .text, .init.text, and .fixup\0A\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"__btset_\00", align 1
@.str.10 = private unnamed_addr constant [90 x i8] c"__btset_ in BTFIXUP name can only be used when defining the variable, not for setting\0A%s\0A\00", align 1
@.str.11 = private unnamed_addr constant [90 x i8] c"Pre-initialized values can be only initialized with hexadecimal constants starting 0x\0A%s\0A\00", align 1
@.str.12 = private unnamed_addr constant [198 x i8] c"Pre-initialized values can be only in the form name__btset_0xXXXXXXXX where X are hex digits.\0AThey cannot be name__btset_0x00000000 though. Use BTFIXUPDEF_XX instead of BTFIXUPDEF_XX_INIT then.\0A%s\0A\00", align 1
@.str.13 = private unnamed_addr constant [47 x i8] c"Cannot use pre-initalized fixups for calls\0A%s\0A\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"32        \00", align 1
@.str.15 = private unnamed_addr constant [78 x i8] c"BTFIXUP_CALL in EXPORT_SYMBOL results in relocation other than R_SPARC_32\0A%s\0A\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"WDISP30   \00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"HI22      \00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"LO10      \00", align 1
@.str.19 = private unnamed_addr constant [96 x i8] c"BTFIXUP_CALL results in relocation other than R_SPARC_WDISP30, R_SPARC_HI22 or R_SPARC_LO10\0A%s\0A\00", align 1
@.str.20 = private unnamed_addr constant [53 x i8] c"Cannot use pre-initialized fixups for blackboxes\0A%s\0A\00", align 1
@.str.21 = private unnamed_addr constant [67 x i8] c"BTFIXUP_BLACKBOX results in relocation other than R_SPARC_HI22\0A%s\0A\00", align 1
@.str.22 = private unnamed_addr constant [72 x i8] c"Wrong initializer for SIMM13. Has to be from $fffff000 to $00000fff\0A%s\0A\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"13        \00", align 1
@.str.24 = private unnamed_addr constant [63 x i8] c"BTFIXUP_SIMM13 results in relocation other than R_SPARC_13\0A%s\0A\00", align 1
@.str.25 = private unnamed_addr constant [32 x i8] c"Wrong initializer for HALF.\0A%s\0A\00", align 1
@.str.26 = private unnamed_addr constant [61 x i8] c"BTFIXUP_HALF results in relocation other than R_SPARC_13\0A%s\0A\00", align 1
@.str.27 = private unnamed_addr constant [61 x i8] c"Wrong initializer for SETHI. Cannot have set low 10 bits\0A%s\0A\00", align 1
@.str.28 = private unnamed_addr constant [64 x i8] c"BTFIXUP_SETHI results in relocation other than R_SPARC_HI22\0A%s\0A\00", align 1
@.str.29 = private unnamed_addr constant [45 x i8] c"Cannot use pre-initalized fixups for INT\0A%s\0A\00", align 1
@.str.30 = private unnamed_addr constant [79 x i8] c"BTFIXUP_INT results in relocation other than R_SPARC_HI22 and R_SPARC_LO10\0A%s\0A\00", align 1
@.str.31 = private unnamed_addr constant [96 x i8] c"Btfixup %s previously used with initializer %s which doesn't match with current initializer\0A%s\0A\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"0x00000000\00", align 1
@.str.33 = private unnamed_addr constant [143 x i8] c"Btfixup %s previously used with initializer %s which doesn't match with current initializer.\0AInitializers have to match literally as well.\0A%s\0A\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"00000000 \00", align 1
@.str.35 = private unnamed_addr constant [18 x i8] c"0000000000000000 \00", align 1
@.str.36 = private unnamed_addr constant [36 x i8] c"Malformed relocation address in\0A%s\0A\00", align 1
@.str.37 = private unnamed_addr constant [45 x i8] c"Ugh. One address has two relocation records\0A\00", align 1
@lastf = common dso_local global %struct.TYPE_7__* null, align 8
@lastfoffset = common dso_local global i32 0, align 4
@lastfrelno = common dso_local global i32 0, align 4
@.str.38 = private unnamed_addr constant [43 x i8] c"! Generated by btfixupprep. Do not edit.\0A\0A\00", align 1
@.str.39 = private unnamed_addr constant [49 x i8] c"\09.section\09\22.data.init\22,#alloc,#write\0A\09.align\094\0A\0A\00", align 1
@.str.40 = private unnamed_addr constant [46 x i8] c"\09.global\09___btfixup_start\0A___btfixup_start:\0A\0A\00", align 1
@last = common dso_local global i32 0, align 4
@array = common dso_local global %struct.TYPE_7__* null, align 8
@.str.41 = private unnamed_addr constant [20 x i8] c"\09.global\09___%cs_%s\0A\00", align 1
@.str.42 = private unnamed_addr constant [30 x i8] c"___%cs_%s:\0A\09.word 0x%08x,0,0,\00", align 1
@.str.43 = private unnamed_addr constant [28 x i8] c"___%cs_%s:\0A\09.word 0x%08x,0,\00", align 1
@.str.44 = private unnamed_addr constant [11 x i8] c"%d\0A\09.word\09\00", align 1
@.str.45 = private unnamed_addr constant [3 x i8] c"0\0A\00", align 1
@.str.46 = private unnamed_addr constant [15 x i8] c"_stext+0x%08lx\00", align 1
@.str.47 = private unnamed_addr constant [21 x i8] c"__init_begin+0x%08lx\00", align 1
@.str.48 = private unnamed_addr constant [26 x i8] c"__start___ksymtab+0x%08lx\00", align 1
@.str.49 = private unnamed_addr constant [24 x i8] c"__start___fixup+0x%08lx\00", align 1
@.str.50 = private unnamed_addr constant [3 x i8] c",0\00", align 1
@.str.51 = private unnamed_addr constant [17 x i8] c",___fs_%s+0x%08x\00", align 1
@.str.52 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.53 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.54 = private unnamed_addr constant [42 x i8] c"\0A\09.global\09___btfixup_end\0A___btfixup_end:\0A\00", align 1
@.str.55 = private unnamed_addr constant [34 x i8] c"\0A\0A! Define undefined references\0A\0A\00", align 1
@.str.56 = private unnamed_addr constant [18 x i8] c"\09.global\09___f_%s\0A\00", align 1
@.str.57 = private unnamed_addr constant [10 x i8] c"___f_%s:\0A\00", align 1
@.str.58 = private unnamed_addr constant [14 x i8] c"\09retl\0A\09 nop\0A\0A\00", align 1
@.str.59 = private unnamed_addr constant [19 x i8] c"\09.global\09___%c_%s\0A\00", align 1
@.str.60 = private unnamed_addr constant [14 x i8] c"___%c_%s = 0\0A\00", align 1
@.str.61 = private unnamed_addr constant [31 x i8] c"\09.global\09___%c_%s__btset_0x%s\0A\00", align 1
@.str.62 = private unnamed_addr constant [31 x i8] c"___%c_%s__btset_0x%s = 0x%08x\0A\00", align 1
@.str.63 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_7__*, align 8
  %15 = alloca %struct.TYPE_6__*, align 8
  %16 = alloca %struct.TYPE_6__**, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %20 = load i8*, i8** @symtab, align 8
  %21 = call i32 @strlen(i8* %20)
  store i32 %21, i32* @symlen, align 4
  br label %22

22:                                               ; preds = %34, %2
  %23 = load i8*, i8** @buffer, align 8
  %24 = load i32, i32* @stdin, align 4
  %25 = call i32* @fgets(i8* %23, i32 1024, i32 %24)
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %35

27:                                               ; preds = %22
  %28 = load i8*, i8** @buffer, align 8
  %29 = load i8*, i8** @symtab, align 8
  %30 = load i32, i32* @symlen, align 4
  %31 = call i64 @strncmp(i8* %28, i8* %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %27
  br label %37

34:                                               ; preds = %27
  br label %22

35:                                               ; preds = %22
  %36 = call i32 (...) @fatal()
  br label %37

37:                                               ; preds = %35, %33
  %38 = load i8*, i8** @relrec, align 8
  %39 = call i32 @strlen(i8* %38)
  store i32 %39, i32* @rellen, align 4
  br label %40

40:                                               ; preds = %52, %37
  %41 = load i8*, i8** @buffer, align 8
  %42 = load i32, i32* @stdin, align 4
  %43 = call i32* @fgets(i8* %41, i32 1024, i32 %42)
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %53

45:                                               ; preds = %40
  %46 = load i8*, i8** @buffer, align 8
  %47 = load i8*, i8** @relrec, align 8
  %48 = load i32, i32* @rellen, align 4
  %49 = call i64 @strncmp(i8* %46, i8* %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %45
  br label %55

52:                                               ; preds = %45
  br label %40

53:                                               ; preds = %40
  %54 = call i32 (...) @fatal()
  br label %55

55:                                               ; preds = %100, %53, %51
  %56 = load i8*, i8** @buffer, align 8
  %57 = load i32, i32* @rellen, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  %60 = call i32 @strlen(i8* %59)
  %61 = add nsw i32 %60, 1
  %62 = call i8* @malloc(i32 %61)
  store i8* %62, i8** %8, align 8
  %63 = load i8*, i8** %8, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %67, label %65

65:                                               ; preds = %55
  %66 = call i32 (...) @fatal()
  br label %67

67:                                               ; preds = %65, %55
  %68 = load i8*, i8** %8, align 8
  %69 = load i8*, i8** @buffer, align 8
  %70 = load i32, i32* @rellen, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %69, i64 %71
  %73 = call i32 @strcpy(i8* %68, i8* %72)
  %74 = load i8*, i8** %8, align 8
  %75 = call i8* @strchr(i8* %74, i8 signext 93)
  store i8* %75, i8** %6, align 8
  %76 = load i8*, i8** %6, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %80, label %78

78:                                               ; preds = %67
  %79 = call i32 (...) @fatal()
  br label %80

80:                                               ; preds = %78, %67
  %81 = load i8*, i8** %6, align 8
  store i8 0, i8* %81, align 1
  %82 = load i8*, i8** @buffer, align 8
  %83 = load i32, i32* @stdin, align 4
  %84 = call i32* @fgets(i8* %82, i32 1024, i32 %83)
  %85 = icmp eq i32* %84, null
  br i1 %85, label %86, label %88

86:                                               ; preds = %80
  %87 = call i32 (...) @fatal()
  br label %88

88:                                               ; preds = %86, %80
  br label %89

89:                                               ; preds = %738, %366, %230, %224, %167, %157, %128, %120, %88
  %90 = load i8*, i8** @buffer, align 8
  %91 = load i32, i32* @stdin, align 4
  %92 = call i32* @fgets(i8* %90, i32 1024, i32 %91)
  %93 = icmp ne i32* %92, null
  br i1 %93, label %94, label %746

94:                                               ; preds = %89
  %95 = load i8*, i8** @buffer, align 8
  %96 = load i8*, i8** @relrec, align 8
  %97 = load i32, i32* @rellen, align 4
  %98 = call i64 @strncmp(i8* %95, i8* %96, i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %94
  br label %55

101:                                              ; preds = %94
  %102 = load i32, i32* @mode, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %101
  %105 = load i8*, i8** @buffer, align 8
  %106 = call i32 @set_mode(i8* %105)
  br label %107

107:                                              ; preds = %104, %101
  %108 = load i8*, i8** @buffer, align 8
  %109 = call i8* @strchr(i8* %108, i8 signext 10)
  store i8* %109, i8** %6, align 8
  %110 = load i8*, i8** %6, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %112, label %114

112:                                              ; preds = %107
  %113 = load i8*, i8** %6, align 8
  store i8 0, i8* %113, align 1
  br label %114

114:                                              ; preds = %112, %107
  %115 = load i8*, i8** @buffer, align 8
  %116 = call i32 @strlen(i8* %115)
  %117 = load i32, i32* @mode, align 4
  %118 = add nsw i32 22, %117
  %119 = icmp slt i32 %116, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %114
  br label %89

121:                                              ; preds = %114
  %122 = load i8*, i8** @buffer, align 8
  %123 = load i32, i32* @mode, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8, i8* %122, i64 %124
  %126 = call i64 @strncmp(i8* %125, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 9)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %121
  br label %89

129:                                              ; preds = %121
  %130 = load i32, i32* @mode, align 4
  %131 = add nsw i32 19, %130
  store i32 %131, i32* %19, align 4
  %132 = load i8*, i8** @buffer, align 8
  %133 = load i32, i32* %19, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8, i8* %132, i64 %134
  %136 = load i8, i8* %135, align 1
  %137 = sext i8 %136 to i32
  %138 = icmp ne i32 %137, 95
  br i1 %138, label %157, label %139

139:                                              ; preds = %129
  %140 = load i8*, i8** @buffer, align 8
  %141 = load i32, i32* %19, align 4
  %142 = add nsw i32 %141, 1
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i8, i8* %140, i64 %143
  %145 = load i8, i8* %144, align 1
  %146 = sext i8 %145 to i32
  %147 = icmp ne i32 %146, 95
  br i1 %147, label %157, label %148

148:                                              ; preds = %139
  %149 = load i8*, i8** @buffer, align 8
  %150 = load i32, i32* %19, align 4
  %151 = add nsw i32 %150, 2
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i8, i8* %149, i64 %152
  %154 = load i8, i8* %153, align 1
  %155 = sext i8 %154 to i32
  %156 = icmp ne i32 %155, 95
  br i1 %156, label %157, label %158

157:                                              ; preds = %148, %139, %129
  br label %89

158:                                              ; preds = %148
  %159 = load i8*, i8** @buffer, align 8
  %160 = load i32, i32* %19, align 4
  %161 = add nsw i32 %160, 3
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i8, i8* %159, i64 %162
  %164 = load i8, i8* %163, align 1
  %165 = sext i8 %164 to i32
  switch i32 %165, label %167 [
    i32 102, label %166
    i32 98, label %166
    i32 115, label %166
    i32 97, label %166
    i32 104, label %166
    i32 105, label %166
  ]

166:                                              ; preds = %158, %158, %158, %158, %158, %158
  br label %168

167:                                              ; preds = %158
  br label %89

168:                                              ; preds = %166
  %169 = load i8*, i8** @buffer, align 8
  %170 = load i32, i32* %19, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i8, i8* %169, i64 %171
  %173 = getelementptr inbounds i8, i8* %172, i64 5
  %174 = call i8* @strchr(i8* %173, i8 signext 43)
  store i8* %174, i8** %6, align 8
  %175 = load i8*, i8** %6, align 8
  %176 = icmp ne i8* %175, null
  br i1 %176, label %177, label %179

177:                                              ; preds = %168
  %178 = load i8*, i8** %6, align 8
  store i8 0, i8* %178, align 1
  br label %179

179:                                              ; preds = %177, %168
  %180 = load i32, i32* %19, align 4
  %181 = add nsw i32 %180, 5
  store i32 %181, i32* %13, align 4
  %182 = load i8*, i8** @buffer, align 8
  %183 = load i32, i32* %19, align 4
  %184 = add nsw i32 %183, 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i8, i8* %182, i64 %185
  %187 = load i8, i8* %186, align 1
  %188 = sext i8 %187 to i32
  %189 = icmp eq i32 %188, 115
  br i1 %189, label %190, label %215

190:                                              ; preds = %179
  %191 = load i8*, i8** @buffer, align 8
  %192 = load i32, i32* %19, align 4
  %193 = add nsw i32 %192, 5
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i8, i8* %191, i64 %194
  %196 = load i8, i8* %195, align 1
  %197 = sext i8 %196 to i32
  %198 = icmp eq i32 %197, 95
  br i1 %198, label %199, label %215

199:                                              ; preds = %190
  %200 = load i32, i32* %19, align 4
  %201 = add nsw i32 %200, 6
  store i32 %201, i32* %13, align 4
  %202 = load i8*, i8** %8, align 8
  %203 = call i64 @strcmp(i8* %202, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %214

205:                                              ; preds = %199
  %206 = load i32, i32* @stderr, align 4
  %207 = load i8*, i8** @buffer, align 8
  %208 = load i32, i32* %13, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i8, i8* %207, i64 %209
  %211 = load i8*, i8** %8, align 8
  %212 = call i32 (i32, i8*, ...) @fprintf(i32 %206, i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.2, i64 0, i64 0), i8* %210, i8* %211)
  %213 = call i32 @exit(i32 1) #3
  unreachable

214:                                              ; preds = %199
  br label %226

215:                                              ; preds = %190, %179
  %216 = load i8*, i8** @buffer, align 8
  %217 = load i32, i32* %19, align 4
  %218 = add nsw i32 %217, 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i8, i8* %216, i64 %219
  %221 = load i8, i8* %220, align 1
  %222 = sext i8 %221 to i32
  %223 = icmp ne i32 %222, 95
  br i1 %223, label %224, label %225

224:                                              ; preds = %215
  br label %89

225:                                              ; preds = %215
  br label %226

226:                                              ; preds = %225, %214
  %227 = load i8*, i8** %8, align 8
  %228 = call i64 @strcmp(i8* %227, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %231, label %230

230:                                              ; preds = %226
  br label %89

231:                                              ; preds = %226
  %232 = load i8*, i8** %8, align 8
  %233 = call i64 @strcmp(i8* %232, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %283

235:                                              ; preds = %231
  %236 = load i8*, i8** %8, align 8
  %237 = call i64 @strcmp(i8* %236, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %283

239:                                              ; preds = %235
  %240 = load i8*, i8** %8, align 8
  %241 = call i64 @strcmp(i8* %240, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %283

243:                                              ; preds = %239
  %244 = load i8*, i8** %8, align 8
  %245 = call i64 @strcmp(i8* %244, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %256, label %247

247:                                              ; preds = %243
  %248 = load i8*, i8** @buffer, align 8
  %249 = load i32, i32* %19, align 4
  %250 = add nsw i32 %249, 3
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i8, i8* %248, i64 %251
  %253 = load i8, i8* %252, align 1
  %254 = sext i8 %253 to i32
  %255 = icmp ne i32 %254, 102
  br i1 %255, label %256, label %283

256:                                              ; preds = %247, %243
  %257 = load i8*, i8** @buffer, align 8
  %258 = load i32, i32* %19, align 4
  %259 = add nsw i32 %258, 3
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i8, i8* %257, i64 %260
  %262 = load i8, i8* %261, align 1
  %263 = sext i8 %262 to i32
  %264 = icmp eq i32 %263, 102
  br i1 %264, label %265, label %273

265:                                              ; preds = %256
  %266 = load i32, i32* @stderr, align 4
  %267 = load i8*, i8** @buffer, align 8
  %268 = load i32, i32* %13, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i8, i8* %267, i64 %269
  %271 = load i8*, i8** %8, align 8
  %272 = call i32 (i32, i8*, ...) @fprintf(i32 %266, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.7, i64 0, i64 0), i8* %270, i8* %271)
  br label %281

273:                                              ; preds = %256
  %274 = load i32, i32* @stderr, align 4
  %275 = load i8*, i8** @buffer, align 8
  %276 = load i32, i32* %13, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i8, i8* %275, i64 %277
  %279 = load i8*, i8** %8, align 8
  %280 = call i32 (i32, i8*, ...) @fprintf(i32 %274, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.8, i64 0, i64 0), i8* %278, i8* %279)
  br label %281

281:                                              ; preds = %273, %265
  %282 = call i32 @exit(i32 1) #3
  unreachable

283:                                              ; preds = %247, %239, %235, %231
  %284 = load i8*, i8** @buffer, align 8
  %285 = load i32, i32* %13, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i8, i8* %284, i64 %286
  %288 = call i8* @strstr(i8* %287, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  store i8* %288, i8** %6, align 8
  %289 = load i8*, i8** %6, align 8
  %290 = icmp ne i8* %289, null
  br i1 %290, label %291, label %305

291:                                              ; preds = %283
  %292 = load i8*, i8** @buffer, align 8
  %293 = load i32, i32* %19, align 4
  %294 = add nsw i32 %293, 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i8, i8* %292, i64 %295
  %297 = load i8, i8* %296, align 1
  %298 = sext i8 %297 to i32
  %299 = icmp eq i32 %298, 115
  br i1 %299, label %300, label %305

300:                                              ; preds = %291
  %301 = load i32, i32* @stderr, align 4
  %302 = load i8*, i8** @buffer, align 8
  %303 = call i32 (i32, i8*, ...) @fprintf(i32 %301, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.10, i64 0, i64 0), i8* %302)
  %304 = call i32 @exit(i32 1) #3
  unreachable

305:                                              ; preds = %291, %283
  store i32 0, i32* %12, align 4
  store i8* null, i8** %18, align 8
  %306 = load i8*, i8** %6, align 8
  %307 = icmp ne i8* %306, null
  br i1 %307, label %308, label %346

308:                                              ; preds = %305
  %309 = load i8*, i8** %6, align 8
  %310 = getelementptr inbounds i8, i8* %309, i64 8
  %311 = load i8, i8* %310, align 1
  %312 = sext i8 %311 to i32
  %313 = icmp ne i32 %312, 48
  br i1 %313, label %320, label %314

314:                                              ; preds = %308
  %315 = load i8*, i8** %6, align 8
  %316 = getelementptr inbounds i8, i8* %315, i64 9
  %317 = load i8, i8* %316, align 1
  %318 = sext i8 %317 to i32
  %319 = icmp ne i32 %318, 120
  br i1 %319, label %320, label %325

320:                                              ; preds = %314, %308
  %321 = load i32, i32* @stderr, align 4
  %322 = load i8*, i8** @buffer, align 8
  %323 = call i32 (i32, i8*, ...) @fprintf(i32 %321, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.11, i64 0, i64 0), i8* %322)
  %324 = call i32 @exit(i32 1) #3
  unreachable

325:                                              ; preds = %314
  %326 = load i8*, i8** %6, align 8
  %327 = getelementptr inbounds i8, i8* %326, i64 10
  %328 = call i8* @strtoul(i8* %327, i8** %7, i32 16)
  %329 = ptrtoint i8* %328 to i32
  store i32 %329, i32* %12, align 4
  %330 = load i8*, i8** %7, align 8
  %331 = load i8, i8* %330, align 1
  %332 = sext i8 %331 to i32
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %337, label %334

334:                                              ; preds = %325
  %335 = load i32, i32* %12, align 4
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %342, label %337

337:                                              ; preds = %334, %325
  %338 = load i32, i32* @stderr, align 4
  %339 = load i8*, i8** @buffer, align 8
  %340 = call i32 (i32, i8*, ...) @fprintf(i32 %338, i8* getelementptr inbounds ([198 x i8], [198 x i8]* @.str.12, i64 0, i64 0), i8* %339)
  %341 = call i32 @exit(i32 1) #3
  unreachable

342:                                              ; preds = %334
  %343 = load i8*, i8** %6, align 8
  %344 = getelementptr inbounds i8, i8* %343, i64 10
  store i8* %344, i8** %18, align 8
  %345 = load i8*, i8** %6, align 8
  store i8 0, i8* %345, align 1
  br label %346

346:                                              ; preds = %342, %305
  %347 = load i8*, i8** @buffer, align 8
  %348 = load i32, i32* %19, align 4
  %349 = add nsw i32 %348, 3
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds i8, i8* %347, i64 %350
  %352 = load i8, i8* %351, align 1
  %353 = load i8*, i8** @buffer, align 8
  %354 = load i32, i32* %13, align 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds i8, i8* %353, i64 %355
  %357 = call %struct.TYPE_7__* @find(i8 signext %352, i8* %356)
  store %struct.TYPE_7__* %357, %struct.TYPE_7__** %14, align 8
  %358 = load i8*, i8** @buffer, align 8
  %359 = load i32, i32* %19, align 4
  %360 = add nsw i32 %359, 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds i8, i8* %358, i64 %361
  %363 = load i8, i8* %362, align 1
  %364 = sext i8 %363 to i32
  %365 = icmp eq i32 %364, 115
  br i1 %365, label %366, label %367

366:                                              ; preds = %346
  br label %89

367:                                              ; preds = %346
  %368 = load i8*, i8** @buffer, align 8
  %369 = load i32, i32* %19, align 4
  %370 = add nsw i32 %369, 3
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds i8, i8* %368, i64 %371
  %373 = load i8, i8* %372, align 1
  %374 = sext i8 %373 to i32
  switch i32 %374, label %557 [
    i32 102, label %375
    i32 98, label %432
    i32 115, label %454
    i32 97, label %477
    i32 104, label %504
    i32 105, label %527
  ]

375:                                              ; preds = %367
  %376 = load i32, i32* %12, align 4
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %378, label %383

378:                                              ; preds = %375
  %379 = load i32, i32* @stderr, align 4
  %380 = load i8*, i8** @buffer, align 8
  %381 = call i32 (i32, i8*, ...) @fprintf(i32 %379, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.13, i64 0, i64 0), i8* %380)
  %382 = call i32 @exit(i32 1) #3
  unreachable

383:                                              ; preds = %375
  %384 = load i8*, i8** %8, align 8
  %385 = call i64 @strcmp(i8* %384, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %386 = icmp ne i64 %385, 0
  br i1 %386, label %401, label %387

387:                                              ; preds = %383
  %388 = load i8*, i8** @buffer, align 8
  %389 = load i32, i32* @mode, align 4
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds i8, i8* %388, i64 %390
  %392 = getelementptr inbounds i8, i8* %391, i64 9
  %393 = call i64 @strncmp(i8* %392, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i32 10)
  %394 = icmp ne i64 %393, 0
  br i1 %394, label %395, label %400

395:                                              ; preds = %387
  %396 = load i32, i32* @stderr, align 4
  %397 = load i8*, i8** @buffer, align 8
  %398 = call i32 (i32, i8*, ...) @fprintf(i32 %396, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.15, i64 0, i64 0), i8* %397)
  %399 = call i32 @exit(i32 1) #3
  unreachable

400:                                              ; preds = %387
  br label %431

401:                                              ; preds = %383
  %402 = load i8*, i8** @buffer, align 8
  %403 = load i32, i32* @mode, align 4
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds i8, i8* %402, i64 %404
  %406 = getelementptr inbounds i8, i8* %405, i64 9
  %407 = call i64 @strncmp(i8* %406, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0), i32 10)
  %408 = icmp ne i64 %407, 0
  br i1 %408, label %409, label %430

409:                                              ; preds = %401
  %410 = load i8*, i8** @buffer, align 8
  %411 = load i32, i32* @mode, align 4
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds i8, i8* %410, i64 %412
  %414 = getelementptr inbounds i8, i8* %413, i64 9
  %415 = call i64 @strncmp(i8* %414, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0), i32 10)
  %416 = icmp ne i64 %415, 0
  br i1 %416, label %417, label %430

417:                                              ; preds = %409
  %418 = load i8*, i8** @buffer, align 8
  %419 = load i32, i32* @mode, align 4
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds i8, i8* %418, i64 %420
  %422 = getelementptr inbounds i8, i8* %421, i64 9
  %423 = call i64 @strncmp(i8* %422, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0), i32 10)
  %424 = icmp ne i64 %423, 0
  br i1 %424, label %425, label %430

425:                                              ; preds = %417
  %426 = load i32, i32* @stderr, align 4
  %427 = load i8*, i8** @buffer, align 8
  %428 = call i32 (i32, i8*, ...) @fprintf(i32 %426, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.19, i64 0, i64 0), i8* %427)
  %429 = call i32 @exit(i32 1) #3
  unreachable

430:                                              ; preds = %417, %409, %401
  br label %431

431:                                              ; preds = %430, %400
  br label %557

432:                                              ; preds = %367
  %433 = load i32, i32* %12, align 4
  %434 = icmp ne i32 %433, 0
  br i1 %434, label %435, label %440

435:                                              ; preds = %432
  %436 = load i32, i32* @stderr, align 4
  %437 = load i8*, i8** @buffer, align 8
  %438 = call i32 (i32, i8*, ...) @fprintf(i32 %436, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.20, i64 0, i64 0), i8* %437)
  %439 = call i32 @exit(i32 1) #3
  unreachable

440:                                              ; preds = %432
  %441 = load i8*, i8** @buffer, align 8
  %442 = load i32, i32* @mode, align 4
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds i8, i8* %441, i64 %443
  %445 = getelementptr inbounds i8, i8* %444, i64 9
  %446 = call i64 @strncmp(i8* %445, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0), i32 10)
  %447 = icmp ne i64 %446, 0
  br i1 %447, label %448, label %453

448:                                              ; preds = %440
  %449 = load i32, i32* @stderr, align 4
  %450 = load i8*, i8** @buffer, align 8
  %451 = call i32 (i32, i8*, ...) @fprintf(i32 %449, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.21, i64 0, i64 0), i8* %450)
  %452 = call i32 @exit(i32 1) #3
  unreachable

453:                                              ; preds = %440
  br label %557

454:                                              ; preds = %367
  %455 = load i32, i32* %12, align 4
  %456 = add i32 %455, 4096
  %457 = icmp uge i32 %456, 8192
  br i1 %457, label %458, label %463

458:                                              ; preds = %454
  %459 = load i32, i32* @stderr, align 4
  %460 = load i8*, i8** @buffer, align 8
  %461 = call i32 (i32, i8*, ...) @fprintf(i32 %459, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.22, i64 0, i64 0), i8* %460)
  %462 = call i32 @exit(i32 1) #3
  unreachable

463:                                              ; preds = %454
  %464 = load i8*, i8** @buffer, align 8
  %465 = load i32, i32* @mode, align 4
  %466 = sext i32 %465 to i64
  %467 = getelementptr inbounds i8, i8* %464, i64 %466
  %468 = getelementptr inbounds i8, i8* %467, i64 9
  %469 = call i64 @strncmp(i8* %468, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i64 0, i64 0), i32 10)
  %470 = icmp ne i64 %469, 0
  br i1 %470, label %471, label %476

471:                                              ; preds = %463
  %472 = load i32, i32* @stderr, align 4
  %473 = load i8*, i8** @buffer, align 8
  %474 = call i32 (i32, i8*, ...) @fprintf(i32 %472, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.24, i64 0, i64 0), i8* %473)
  %475 = call i32 @exit(i32 1) #3
  unreachable

476:                                              ; preds = %463
  br label %557

477:                                              ; preds = %367
  %478 = load i32, i32* %12, align 4
  %479 = add i32 %478, 4096
  %480 = icmp uge i32 %479, 8192
  br i1 %480, label %481, label %490

481:                                              ; preds = %477
  %482 = load i32, i32* %12, align 4
  %483 = and i32 %482, 1023
  %484 = icmp ne i32 %483, 0
  br i1 %484, label %485, label %490

485:                                              ; preds = %481
  %486 = load i32, i32* @stderr, align 4
  %487 = load i8*, i8** @buffer, align 8
  %488 = call i32 (i32, i8*, ...) @fprintf(i32 %486, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.25, i64 0, i64 0), i8* %487)
  %489 = call i32 @exit(i32 1) #3
  unreachable

490:                                              ; preds = %481, %477
  %491 = load i8*, i8** @buffer, align 8
  %492 = load i32, i32* @mode, align 4
  %493 = sext i32 %492 to i64
  %494 = getelementptr inbounds i8, i8* %491, i64 %493
  %495 = getelementptr inbounds i8, i8* %494, i64 9
  %496 = call i64 @strncmp(i8* %495, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i64 0, i64 0), i32 10)
  %497 = icmp ne i64 %496, 0
  br i1 %497, label %498, label %503

498:                                              ; preds = %490
  %499 = load i32, i32* @stderr, align 4
  %500 = load i8*, i8** @buffer, align 8
  %501 = call i32 (i32, i8*, ...) @fprintf(i32 %499, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.26, i64 0, i64 0), i8* %500)
  %502 = call i32 @exit(i32 1) #3
  unreachable

503:                                              ; preds = %490
  br label %557

504:                                              ; preds = %367
  %505 = load i32, i32* %12, align 4
  %506 = and i32 %505, 1023
  %507 = icmp ne i32 %506, 0
  br i1 %507, label %508, label %513

508:                                              ; preds = %504
  %509 = load i32, i32* @stderr, align 4
  %510 = load i8*, i8** @buffer, align 8
  %511 = call i32 (i32, i8*, ...) @fprintf(i32 %509, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.27, i64 0, i64 0), i8* %510)
  %512 = call i32 @exit(i32 1) #3
  unreachable

513:                                              ; preds = %504
  %514 = load i8*, i8** @buffer, align 8
  %515 = load i32, i32* @mode, align 4
  %516 = sext i32 %515 to i64
  %517 = getelementptr inbounds i8, i8* %514, i64 %516
  %518 = getelementptr inbounds i8, i8* %517, i64 9
  %519 = call i64 @strncmp(i8* %518, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0), i32 10)
  %520 = icmp ne i64 %519, 0
  br i1 %520, label %521, label %526

521:                                              ; preds = %513
  %522 = load i32, i32* @stderr, align 4
  %523 = load i8*, i8** @buffer, align 8
  %524 = call i32 (i32, i8*, ...) @fprintf(i32 %522, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.28, i64 0, i64 0), i8* %523)
  %525 = call i32 @exit(i32 1) #3
  unreachable

526:                                              ; preds = %513
  br label %557

527:                                              ; preds = %367
  %528 = load i32, i32* %12, align 4
  %529 = icmp ne i32 %528, 0
  br i1 %529, label %530, label %535

530:                                              ; preds = %527
  %531 = load i32, i32* @stderr, align 4
  %532 = load i8*, i8** @buffer, align 8
  %533 = call i32 (i32, i8*, ...) @fprintf(i32 %531, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.29, i64 0, i64 0), i8* %532)
  %534 = call i32 @exit(i32 1) #3
  unreachable

535:                                              ; preds = %527
  %536 = load i8*, i8** @buffer, align 8
  %537 = load i32, i32* @mode, align 4
  %538 = sext i32 %537 to i64
  %539 = getelementptr inbounds i8, i8* %536, i64 %538
  %540 = getelementptr inbounds i8, i8* %539, i64 9
  %541 = call i64 @strncmp(i8* %540, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0), i32 10)
  %542 = icmp ne i64 %541, 0
  br i1 %542, label %543, label %556

543:                                              ; preds = %535
  %544 = load i8*, i8** @buffer, align 8
  %545 = load i32, i32* @mode, align 4
  %546 = sext i32 %545 to i64
  %547 = getelementptr inbounds i8, i8* %544, i64 %546
  %548 = getelementptr inbounds i8, i8* %547, i64 9
  %549 = call i64 @strncmp(i8* %548, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0), i32 10)
  %550 = icmp ne i64 %549, 0
  br i1 %550, label %551, label %556

551:                                              ; preds = %543
  %552 = load i32, i32* @stderr, align 4
  %553 = load i8*, i8** @buffer, align 8
  %554 = call i32 (i32, i8*, ...) @fprintf(i32 %552, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.30, i64 0, i64 0), i8* %553)
  %555 = call i32 @exit(i32 1) #3
  unreachable

556:                                              ; preds = %543, %535
  br label %557

557:                                              ; preds = %367, %556, %526, %503, %476, %453, %431
  %558 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %559 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %558, i32 0, i32 0
  %560 = load i32, i32* %559, align 8
  %561 = icmp ne i32 %560, 0
  br i1 %561, label %583, label %562

562:                                              ; preds = %557
  %563 = load i32, i32* %12, align 4
  %564 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %565 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %564, i32 0, i32 1
  store i32 %563, i32* %565, align 4
  %566 = load i8*, i8** %18, align 8
  %567 = icmp ne i8* %566, null
  br i1 %567, label %568, label %580

568:                                              ; preds = %562
  %569 = load i8*, i8** %18, align 8
  %570 = call i8* @strdup(i8* %569)
  %571 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %572 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %571, i32 0, i32 2
  store i8* %570, i8** %572, align 8
  %573 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %574 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %573, i32 0, i32 2
  %575 = load i8*, i8** %574, align 8
  %576 = icmp ne i8* %575, null
  br i1 %576, label %579, label %577

577:                                              ; preds = %568
  %578 = call i32 (...) @fatal()
  br label %579

579:                                              ; preds = %577, %568
  br label %580

580:                                              ; preds = %579, %562
  %581 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %582 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %581, i32 0, i32 0
  store i32 1, i32* %582, align 8
  br label %628

583:                                              ; preds = %557
  %584 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %585 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %584, i32 0, i32 1
  %586 = load i32, i32* %585, align 4
  %587 = load i32, i32* %12, align 4
  %588 = icmp ne i32 %586, %587
  br i1 %588, label %589, label %605

589:                                              ; preds = %583
  %590 = load i32, i32* @stderr, align 4
  %591 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %592 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %591, i32 0, i32 3
  %593 = load i8*, i8** %592, align 8
  %594 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %595 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %594, i32 0, i32 2
  %596 = load i8*, i8** %595, align 8
  %597 = icmp ne i8* %596, null
  br i1 %597, label %598, label %599

598:                                              ; preds = %589
  br label %600

599:                                              ; preds = %589
  br label %600

600:                                              ; preds = %599, %598
  %601 = phi i8* [ %596, %598 ], [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i64 0, i64 0), %599 ]
  %602 = load i8*, i8** @buffer, align 8
  %603 = call i32 (i32, i8*, ...) @fprintf(i32 %590, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.31, i64 0, i64 0), i8* %593, i8* %601, i8* %602)
  %604 = call i32 @exit(i32 1) #3
  unreachable

605:                                              ; preds = %583
  %606 = load i32, i32* %12, align 4
  %607 = icmp ne i32 %606, 0
  br i1 %607, label %608, label %626

608:                                              ; preds = %605
  %609 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %610 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %609, i32 0, i32 2
  %611 = load i8*, i8** %610, align 8
  %612 = load i8*, i8** %18, align 8
  %613 = call i64 @strcmp(i8* %611, i8* %612)
  %614 = icmp ne i64 %613, 0
  br i1 %614, label %615, label %626

615:                                              ; preds = %608
  %616 = load i32, i32* @stderr, align 4
  %617 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %618 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %617, i32 0, i32 3
  %619 = load i8*, i8** %618, align 8
  %620 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %621 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %620, i32 0, i32 2
  %622 = load i8*, i8** %621, align 8
  %623 = load i8*, i8** @buffer, align 8
  %624 = call i32 (i32, i8*, ...) @fprintf(i32 %616, i8* getelementptr inbounds ([143 x i8], [143 x i8]* @.str.33, i64 0, i64 0), i8* %619, i8* %622, i8* %623)
  %625 = call i32 @exit(i32 1) #3
  unreachable

626:                                              ; preds = %608, %605
  br label %627

627:                                              ; preds = %626
  br label %628

628:                                              ; preds = %627, %580
  %629 = load i8*, i8** @buffer, align 8
  %630 = call i8* @strtoul(i8* %629, i8** %7, i32 16)
  %631 = ptrtoint i8* %630 to i64
  store i64 %631, i64* %17, align 8
  %632 = load i8*, i8** %7, align 8
  %633 = load i8*, i8** @buffer, align 8
  %634 = load i32, i32* @mode, align 4
  %635 = sext i32 %634 to i64
  %636 = getelementptr inbounds i8, i8* %633, i64 %635
  %637 = icmp ne i8* %632, %636
  br i1 %637, label %652, label %638

638:                                              ; preds = %628
  %639 = load i64, i64* %17, align 8
  %640 = icmp ne i64 %639, 0
  br i1 %640, label %657, label %641

641:                                              ; preds = %638
  %642 = load i32, i32* @mode, align 4
  %643 = icmp eq i32 %642, 8
  br i1 %643, label %644, label %648

644:                                              ; preds = %641
  %645 = load i8*, i8** @buffer, align 8
  %646 = call i64 @strncmp(i8* %645, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i64 0, i64 0), i32 9)
  %647 = icmp ne i64 %646, 0
  br i1 %647, label %652, label %657

648:                                              ; preds = %641
  %649 = load i8*, i8** @buffer, align 8
  %650 = call i64 @strncmp(i8* %649, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.35, i64 0, i64 0), i32 17)
  %651 = icmp ne i64 %650, 0
  br i1 %651, label %652, label %657

652:                                              ; preds = %648, %644, %628
  %653 = load i32, i32* @stderr, align 4
  %654 = load i8*, i8** @buffer, align 8
  %655 = call i32 (i32, i8*, ...) @fprintf(i32 %653, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.36, i64 0, i64 0), i8* %654)
  %656 = call i32 @exit(i32 1) #3
  unreachable

657:                                              ; preds = %648, %644, %638
  store i32 0, i32* %11, align 4
  %658 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %659 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %658, i32 0, i32 5
  %660 = load %struct.TYPE_6__*, %struct.TYPE_6__** %659, align 8
  store %struct.TYPE_6__* %660, %struct.TYPE_6__** %15, align 8
  %661 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %662 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %661, i32 0, i32 5
  store %struct.TYPE_6__** %662, %struct.TYPE_6__*** %16, align 8
  br label %663

663:                                              ; preds = %684, %657
  %664 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %665 = icmp ne %struct.TYPE_6__* %664, null
  br i1 %665, label %666, label %692

666:                                              ; preds = %663
  %667 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %668 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %667, i32 0, i32 0
  %669 = load i64, i64* %668, align 8
  %670 = load i64, i64* %17, align 8
  %671 = icmp eq i64 %669, %670
  br i1 %671, label %672, label %683

672:                                              ; preds = %666
  %673 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %674 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %673, i32 0, i32 1
  %675 = load i8*, i8** %674, align 8
  %676 = load i8*, i8** %8, align 8
  %677 = call i64 @strcmp(i8* %675, i8* %676)
  %678 = icmp ne i64 %677, 0
  br i1 %678, label %683, label %679

679:                                              ; preds = %672
  %680 = load i32, i32* @stderr, align 4
  %681 = call i32 (i32, i8*, ...) @fprintf(i32 %680, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.37, i64 0, i64 0))
  %682 = call i32 @exit(i32 1) #3
  unreachable

683:                                              ; preds = %672, %666
  br label %684

684:                                              ; preds = %683
  %685 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %686 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %685, i32 0, i32 4
  store %struct.TYPE_6__** %686, %struct.TYPE_6__*** %16, align 8
  %687 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %688 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %687, i32 0, i32 4
  %689 = load %struct.TYPE_6__*, %struct.TYPE_6__** %688, align 8
  store %struct.TYPE_6__* %689, %struct.TYPE_6__** %15, align 8
  %690 = load i32, i32* %11, align 4
  %691 = add nsw i32 %690, 1
  store i32 %691, i32* %11, align 4
  br label %663

692:                                              ; preds = %663
  %693 = call i8* @malloc(i32 40)
  %694 = bitcast i8* %693 to %struct.TYPE_6__*
  %695 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %16, align 8
  store %struct.TYPE_6__* %694, %struct.TYPE_6__** %695, align 8
  %696 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %16, align 8
  %697 = load %struct.TYPE_6__*, %struct.TYPE_6__** %696, align 8
  %698 = icmp ne %struct.TYPE_6__* %697, null
  br i1 %698, label %701, label %699

699:                                              ; preds = %692
  %700 = call i32 (...) @fatal()
  br label %701

701:                                              ; preds = %699, %692
  %702 = load i64, i64* %17, align 8
  %703 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %16, align 8
  %704 = load %struct.TYPE_6__*, %struct.TYPE_6__** %703, align 8
  %705 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %704, i32 0, i32 0
  store i64 %702, i64* %705, align 8
  %706 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %16, align 8
  %707 = load %struct.TYPE_6__*, %struct.TYPE_6__** %706, align 8
  %708 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %707, i32 0, i32 3
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %708, align 8
  %709 = load i8*, i8** @buffer, align 8
  %710 = load i32, i32* %19, align 4
  %711 = add nsw i32 %710, 3
  %712 = sext i32 %711 to i64
  %713 = getelementptr inbounds i8, i8* %709, i64 %712
  %714 = load i8, i8* %713, align 1
  %715 = sext i8 %714 to i32
  %716 = icmp eq i32 %715, 102
  br i1 %716, label %717, label %722

717:                                              ; preds = %701
  %718 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  store %struct.TYPE_7__* %718, %struct.TYPE_7__** @lastf, align 8
  %719 = load i64, i64* %17, align 8
  %720 = trunc i64 %719 to i32
  store i32 %720, i32* @lastfoffset, align 4
  %721 = load i32, i32* %11, align 4
  store i32 %721, i32* @lastfrelno, align 4
  br label %738

722:                                              ; preds = %701
  %723 = load i32, i32* @lastfoffset, align 4
  %724 = add nsw i32 %723, 4
  %725 = sext i32 %724 to i64
  %726 = load i64, i64* %17, align 8
  %727 = icmp eq i64 %725, %726
  br i1 %727, label %728, label %737

728:                                              ; preds = %722
  %729 = load %struct.TYPE_7__*, %struct.TYPE_7__** @lastf, align 8
  %730 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %16, align 8
  %731 = load %struct.TYPE_6__*, %struct.TYPE_6__** %730, align 8
  %732 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %731, i32 0, i32 3
  store %struct.TYPE_7__* %729, %struct.TYPE_7__** %732, align 8
  %733 = load i32, i32* @lastfrelno, align 4
  %734 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %16, align 8
  %735 = load %struct.TYPE_6__*, %struct.TYPE_6__** %734, align 8
  %736 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %735, i32 0, i32 2
  store i32 %733, i32* %736, align 8
  br label %737

737:                                              ; preds = %728, %722
  br label %738

738:                                              ; preds = %737, %717
  %739 = load i8*, i8** %8, align 8
  %740 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %16, align 8
  %741 = load %struct.TYPE_6__*, %struct.TYPE_6__** %740, align 8
  %742 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %741, i32 0, i32 1
  store i8* %739, i8** %742, align 8
  %743 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %16, align 8
  %744 = load %struct.TYPE_6__*, %struct.TYPE_6__** %743, align 8
  %745 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %744, i32 0, i32 4
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %745, align 8
  br label %89

746:                                              ; preds = %89
  %747 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.38, i64 0, i64 0))
  %748 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.39, i64 0, i64 0))
  %749 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.40, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %750

750:                                              ; preds = %917, %746
  %751 = load i32, i32* %9, align 4
  %752 = load i32, i32* @last, align 4
  %753 = icmp slt i32 %751, %752
  br i1 %753, label %754, label %920

754:                                              ; preds = %750
  %755 = load %struct.TYPE_7__*, %struct.TYPE_7__** @array, align 8
  %756 = load i32, i32* %9, align 4
  %757 = sext i32 %756 to i64
  %758 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %755, i64 %757
  store %struct.TYPE_7__* %758, %struct.TYPE_7__** %14, align 8
  %759 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %760 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %759, i32 0, i32 4
  %761 = load i32, i32* %760, align 8
  %762 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %763 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %762, i32 0, i32 3
  %764 = load i8*, i8** %763, align 8
  %765 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.41, i64 0, i64 0), i32 %761, i8* %764)
  %766 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %767 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %766, i32 0, i32 4
  %768 = load i32, i32* %767, align 8
  %769 = icmp eq i32 %768, 102
  br i1 %769, label %770, label %782

770:                                              ; preds = %754
  %771 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %772 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %771, i32 0, i32 4
  %773 = load i32, i32* %772, align 8
  %774 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %775 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %774, i32 0, i32 3
  %776 = load i8*, i8** %775, align 8
  %777 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %778 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %777, i32 0, i32 4
  %779 = load i32, i32* %778, align 8
  %780 = shl i32 %779, 24
  %781 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.42, i64 0, i64 0), i32 %773, i8* %776, i32 %780)
  br label %794

782:                                              ; preds = %754
  %783 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %784 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %783, i32 0, i32 4
  %785 = load i32, i32* %784, align 8
  %786 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %787 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %786, i32 0, i32 3
  %788 = load i8*, i8** %787, align 8
  %789 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %790 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %789, i32 0, i32 4
  %791 = load i32, i32* %790, align 8
  %792 = shl i32 %791, 24
  %793 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.43, i64 0, i64 0), i32 %785, i8* %788, i32 %792)
  br label %794

794:                                              ; preds = %782, %770
  store i32 0, i32* %10, align 4
  %795 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %796 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %795, i32 0, i32 5
  %797 = load %struct.TYPE_6__*, %struct.TYPE_6__** %796, align 8
  store %struct.TYPE_6__* %797, %struct.TYPE_6__** %15, align 8
  br label %798

798:                                              ; preds = %802, %794
  %799 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %800 = icmp ne %struct.TYPE_6__* %799, null
  br i1 %800, label %801, label %808

801:                                              ; preds = %798
  br label %802

802:                                              ; preds = %801
  %803 = load i32, i32* %10, align 4
  %804 = add nsw i32 %803, 1
  store i32 %804, i32* %10, align 4
  %805 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %806 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %805, i32 0, i32 4
  %807 = load %struct.TYPE_6__*, %struct.TYPE_6__** %806, align 8
  store %struct.TYPE_6__* %807, %struct.TYPE_6__** %15, align 8
  br label %798

808:                                              ; preds = %798
  %809 = load i32, i32* %10, align 4
  %810 = icmp ne i32 %809, 0
  br i1 %810, label %811, label %815

811:                                              ; preds = %808
  %812 = load i32, i32* %10, align 4
  %813 = mul nsw i32 %812, 2
  %814 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.44, i64 0, i64 0), i32 %813)
  br label %817

815:                                              ; preds = %808
  %816 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i64 0, i64 0))
  br label %817

817:                                              ; preds = %815, %811
  %818 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %819 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %818, i32 0, i32 5
  %820 = load %struct.TYPE_6__*, %struct.TYPE_6__** %819, align 8
  store %struct.TYPE_6__* %820, %struct.TYPE_6__** %15, align 8
  %821 = load i32, i32* %10, align 4
  %822 = add nsw i32 %821, -1
  store i32 %822, i32* %10, align 4
  br label %823

823:                                              ; preds = %909, %817
  %824 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %825 = icmp ne %struct.TYPE_6__* %824, null
  br i1 %825, label %826, label %915

826:                                              ; preds = %823
  %827 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %828 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %827, i32 0, i32 1
  %829 = load i8*, i8** %828, align 8
  %830 = call i64 @strcmp(i8* %829, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %831 = icmp ne i64 %830, 0
  br i1 %831, label %837, label %832

832:                                              ; preds = %826
  %833 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %834 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %833, i32 0, i32 0
  %835 = load i64, i64* %834, align 8
  %836 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.46, i64 0, i64 0), i64 %835)
  br label %875

837:                                              ; preds = %826
  %838 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %839 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %838, i32 0, i32 1
  %840 = load i8*, i8** %839, align 8
  %841 = call i64 @strcmp(i8* %840, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %842 = icmp ne i64 %841, 0
  br i1 %842, label %848, label %843

843:                                              ; preds = %837
  %844 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %845 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %844, i32 0, i32 0
  %846 = load i64, i64* %845, align 8
  %847 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.47, i64 0, i64 0), i64 %846)
  br label %874

848:                                              ; preds = %837
  %849 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %850 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %849, i32 0, i32 1
  %851 = load i8*, i8** %850, align 8
  %852 = call i64 @strcmp(i8* %851, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %853 = icmp ne i64 %852, 0
  br i1 %853, label %859, label %854

854:                                              ; preds = %848
  %855 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %856 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %855, i32 0, i32 0
  %857 = load i64, i64* %856, align 8
  %858 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.48, i64 0, i64 0), i64 %857)
  br label %873

859:                                              ; preds = %848
  %860 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %861 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %860, i32 0, i32 1
  %862 = load i8*, i8** %861, align 8
  %863 = call i64 @strcmp(i8* %862, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %864 = icmp ne i64 %863, 0
  br i1 %864, label %870, label %865

865:                                              ; preds = %859
  %866 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %867 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %866, i32 0, i32 0
  %868 = load i64, i64* %867, align 8
  %869 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.49, i64 0, i64 0), i64 %868)
  br label %872

870:                                              ; preds = %859
  %871 = call i32 (...) @fatal()
  br label %872

872:                                              ; preds = %870, %865
  br label %873

873:                                              ; preds = %872, %854
  br label %874

874:                                              ; preds = %873, %843
  br label %875

875:                                              ; preds = %874, %832
  %876 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %877 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %876, i32 0, i32 4
  %878 = load i32, i32* %877, align 8
  %879 = icmp eq i32 %878, 102
  br i1 %879, label %885, label %880

880:                                              ; preds = %875
  %881 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %882 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %881, i32 0, i32 3
  %883 = load %struct.TYPE_7__*, %struct.TYPE_7__** %882, align 8
  %884 = icmp ne %struct.TYPE_7__* %883, null
  br i1 %884, label %887, label %885

885:                                              ; preds = %880, %875
  %886 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.50, i64 0, i64 0))
  br label %901

887:                                              ; preds = %880
  %888 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %889 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %888, i32 0, i32 3
  %890 = load %struct.TYPE_7__*, %struct.TYPE_7__** %889, align 8
  %891 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %890, i32 0, i32 3
  %892 = load i8*, i8** %891, align 8
  %893 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %894 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %893, i32 0, i32 2
  %895 = load i32, i32* %894, align 8
  %896 = mul nsw i32 %895, 2
  %897 = add nsw i32 4, %896
  %898 = mul nsw i32 %897, 4
  %899 = add nsw i32 %898, 4
  %900 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.51, i64 0, i64 0), i8* %892, i32 %899)
  br label %901

901:                                              ; preds = %887, %885
  %902 = load i32, i32* %10, align 4
  %903 = icmp ne i32 %902, 0
  br i1 %903, label %904, label %906

904:                                              ; preds = %901
  %905 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.52, i64 0, i64 0))
  br label %908

906:                                              ; preds = %901
  %907 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.53, i64 0, i64 0))
  br label %908

908:                                              ; preds = %906, %904
  br label %909

909:                                              ; preds = %908
  %910 = load i32, i32* %10, align 4
  %911 = add nsw i32 %910, -1
  store i32 %911, i32* %10, align 4
  %912 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %913 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %912, i32 0, i32 4
  %914 = load %struct.TYPE_6__*, %struct.TYPE_6__** %913, align 8
  store %struct.TYPE_6__* %914, %struct.TYPE_6__** %15, align 8
  br label %823

915:                                              ; preds = %823
  %916 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.53, i64 0, i64 0))
  br label %917

917:                                              ; preds = %915
  %918 = load i32, i32* %9, align 4
  %919 = add nsw i32 %918, 1
  store i32 %919, i32* %9, align 4
  br label %750

920:                                              ; preds = %750
  %921 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.54, i64 0, i64 0))
  %922 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.55, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %923

923:                                              ; preds = %946, %920
  %924 = load i32, i32* %9, align 4
  %925 = load i32, i32* @last, align 4
  %926 = icmp slt i32 %924, %925
  br i1 %926, label %927, label %949

927:                                              ; preds = %923
  %928 = load %struct.TYPE_7__*, %struct.TYPE_7__** @array, align 8
  %929 = load i32, i32* %9, align 4
  %930 = sext i32 %929 to i64
  %931 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %928, i64 %930
  store %struct.TYPE_7__* %931, %struct.TYPE_7__** %14, align 8
  %932 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %933 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %932, i32 0, i32 4
  %934 = load i32, i32* %933, align 8
  %935 = icmp eq i32 %934, 102
  br i1 %935, label %936, label %945

936:                                              ; preds = %927
  %937 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %938 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %937, i32 0, i32 3
  %939 = load i8*, i8** %938, align 8
  %940 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.56, i64 0, i64 0), i8* %939)
  %941 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %942 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %941, i32 0, i32 3
  %943 = load i8*, i8** %942, align 8
  %944 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.57, i64 0, i64 0), i8* %943)
  br label %945

945:                                              ; preds = %936, %927
  br label %946

946:                                              ; preds = %945
  %947 = load i32, i32* %9, align 4
  %948 = add nsw i32 %947, 1
  store i32 %948, i32* %9, align 4
  br label %923

949:                                              ; preds = %923
  %950 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.58, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %951

951:                                              ; preds = %1010, %949
  %952 = load i32, i32* %9, align 4
  %953 = load i32, i32* @last, align 4
  %954 = icmp slt i32 %952, %953
  br i1 %954, label %955, label %1013

955:                                              ; preds = %951
  %956 = load %struct.TYPE_7__*, %struct.TYPE_7__** @array, align 8
  %957 = load i32, i32* %9, align 4
  %958 = sext i32 %957 to i64
  %959 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %956, i64 %958
  store %struct.TYPE_7__* %959, %struct.TYPE_7__** %14, align 8
  %960 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %961 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %960, i32 0, i32 4
  %962 = load i32, i32* %961, align 8
  %963 = icmp ne i32 %962, 102
  br i1 %963, label %964, label %1009

964:                                              ; preds = %955
  %965 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %966 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %965, i32 0, i32 1
  %967 = load i32, i32* %966, align 4
  %968 = icmp ne i32 %967, 0
  br i1 %968, label %984, label %969

969:                                              ; preds = %964
  %970 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %971 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %970, i32 0, i32 4
  %972 = load i32, i32* %971, align 8
  %973 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %974 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %973, i32 0, i32 3
  %975 = load i8*, i8** %974, align 8
  %976 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.59, i64 0, i64 0), i32 %972, i8* %975)
  %977 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %978 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %977, i32 0, i32 4
  %979 = load i32, i32* %978, align 8
  %980 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %981 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %980, i32 0, i32 3
  %982 = load i8*, i8** %981, align 8
  %983 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.60, i64 0, i64 0), i32 %979, i8* %982)
  br label %1008

984:                                              ; preds = %964
  %985 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %986 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %985, i32 0, i32 4
  %987 = load i32, i32* %986, align 8
  %988 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %989 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %988, i32 0, i32 3
  %990 = load i8*, i8** %989, align 8
  %991 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %992 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %991, i32 0, i32 2
  %993 = load i8*, i8** %992, align 8
  %994 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.61, i64 0, i64 0), i32 %987, i8* %990, i8* %993)
  %995 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %996 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %995, i32 0, i32 4
  %997 = load i32, i32* %996, align 8
  %998 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %999 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %998, i32 0, i32 3
  %1000 = load i8*, i8** %999, align 8
  %1001 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %1002 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1001, i32 0, i32 2
  %1003 = load i8*, i8** %1002, align 8
  %1004 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %1005 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1004, i32 0, i32 1
  %1006 = load i32, i32* %1005, align 4
  %1007 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.62, i64 0, i64 0), i32 %997, i8* %1000, i8* %1003, i32 %1006)
  br label %1008

1008:                                             ; preds = %984, %969
  br label %1009

1009:                                             ; preds = %1008, %955
  br label %1010

1010:                                             ; preds = %1009
  %1011 = load i32, i32* %9, align 4
  %1012 = add nsw i32 %1011, 1
  store i32 %1012, i32* %9, align 4
  br label %951

1013:                                             ; preds = %951
  %1014 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.63, i64 0, i64 0))
  %1015 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32* @fgets(i8*, i32, i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @fatal(...) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @set_mode(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i8* @strtoul(i8*, i8**, i32) #1

declare dso_local %struct.TYPE_7__* @find(i8 signext, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
