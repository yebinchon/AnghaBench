; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_arp_query_cb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_arp_query_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { i32 }
%struct.qeth_reply = type { i64 }
%struct.qeth_ipa_cmd = type { %struct.TYPE_10__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i64, i64, i64 }
%struct.TYPE_6__ = type { %struct.qeth_arp_query_data }
%struct.qeth_arp_query_data = type { i64, i8, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.qeth_arp_query_info = type { i32, i64, i64, i64, i64 }
%struct.qeth_arp_entrytype = type { i64 }
%struct.qeth_arp_qi_entry5 = type { %struct.qeth_arp_entrytype }

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"arpquecb\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"arpcberr%i\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"qaer1%i\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"setaperr%i\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%i\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"anoen%i\00", align 1
@QETH_QARP_STRIP_ENTRIES = common dso_local global i32 0, align 4
@QETH_QARP_MEDIASPECIFIC_BYTES = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"pmis\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"esz%i\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"qaer3%i\00", align 1
@ENOMEM = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [7 x i8] c"nove%i\00", align 1
@QETH_QARP_MASK_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*, %struct.qeth_reply*, i64)* @qeth_l3_arp_query_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_l3_arp_query_cb(%struct.qeth_card* %0, %struct.qeth_reply* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qeth_card*, align 8
  %6 = alloca %struct.qeth_reply*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.qeth_ipa_cmd*, align 8
  %9 = alloca %struct.qeth_arp_query_data*, align 8
  %10 = alloca %struct.qeth_arp_query_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.qeth_arp_entrytype*, align 8
  store %struct.qeth_card* %0, %struct.qeth_card** %5, align 8
  store %struct.qeth_reply* %1, %struct.qeth_reply** %6, align 8
  store i64 %2, i64* %7, align 8
  %19 = load i32, i32* @TRACE, align 4
  %20 = call i32 @QETH_DBF_TEXT(i32 %19, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.qeth_reply*, %struct.qeth_reply** %6, align 8
  %22 = getelementptr inbounds %struct.qeth_reply, %struct.qeth_reply* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.qeth_arp_query_info*
  store %struct.qeth_arp_query_info* %24, %struct.qeth_arp_query_info** %10, align 8
  %25 = load i64, i64* %7, align 8
  %26 = inttoptr i64 %25 to %struct.qeth_ipa_cmd*
  store %struct.qeth_ipa_cmd* %26, %struct.qeth_ipa_cmd** %8, align 8
  %27 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %8, align 8
  %28 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %3
  %33 = load i32, i32* @TRACE, align 4
  %34 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %8, align 8
  %35 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = call i32 @QETH_DBF_TEXT_(i32 %33, i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i64 %38)
  %40 = load i32, i32* @TRACE, align 4
  %41 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %8, align 8
  %42 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = call i32 @QETH_DBF_TEXT_(i32 %40, i32 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i64 %45)
  store i32 0, i32* %4, align 4
  br label %263

47:                                               ; preds = %3
  %48 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %8, align 8
  %49 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %80

55:                                               ; preds = %47
  %56 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %8, align 8
  %57 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = trunc i64 %61 to i32
  %63 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %8, align 8
  %64 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  store i32 %62, i32* %65, align 8
  %66 = load i32, i32* @TRACE, align 4
  %67 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %8, align 8
  %68 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = sext i32 %70 to i64
  %72 = call i32 @QETH_DBF_TEXT_(i32 %66, i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i64 %71)
  %73 = load i32, i32* @TRACE, align 4
  %74 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %8, align 8
  %75 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = sext i32 %77 to i64
  %79 = call i32 @QETH_DBF_TEXT_(i32 %73, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i64 %78)
  store i32 0, i32* %4, align 4
  br label %263

80:                                               ; preds = %47
  %81 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %8, align 8
  %82 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  store %struct.qeth_arp_query_data* %85, %struct.qeth_arp_query_data** %9, align 8
  %86 = load i32, i32* @TRACE, align 4
  %87 = load %struct.qeth_arp_query_data*, %struct.qeth_arp_query_data** %9, align 8
  %88 = getelementptr inbounds %struct.qeth_arp_query_data, %struct.qeth_arp_query_data* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @QETH_DBF_TEXT_(i32 %86, i32 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i64 %89)
  %91 = load %struct.qeth_arp_query_info*, %struct.qeth_arp_query_info** %10, align 8
  %92 = getelementptr inbounds %struct.qeth_arp_query_info, %struct.qeth_arp_query_info* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @QETH_QARP_STRIP_ENTRIES, align 4
  %95 = and i32 %93, %94
  %96 = icmp sgt i32 %95, 0
  %97 = zext i1 %96 to i32
  store i32 %97, i32* %15, align 4
  %98 = load i32, i32* %15, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %80
  %101 = load i32, i32* @QETH_QARP_MEDIASPECIFIC_BYTES, align 4
  br label %103

102:                                              ; preds = %80
  br label %103

103:                                              ; preds = %102, %100
  %104 = phi i32 [ %101, %100 ], [ 0, %102 ]
  store i32 %104, i32* %14, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %105

105:                                              ; preds = %206, %103
  %106 = load i32, i32* %12, align 4
  %107 = sext i32 %106 to i64
  %108 = load %struct.qeth_arp_query_data*, %struct.qeth_arp_query_data** %9, align 8
  %109 = getelementptr inbounds %struct.qeth_arp_query_data, %struct.qeth_arp_query_data* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp slt i64 %107, %110
  br i1 %111, label %112, label %209

112:                                              ; preds = %105
  %113 = load %struct.qeth_arp_query_data*, %struct.qeth_arp_query_data** %9, align 8
  %114 = getelementptr inbounds %struct.qeth_arp_query_data, %struct.qeth_arp_query_data* %113, i32 0, i32 1
  %115 = load i32, i32* %13, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8, i8* %114, i64 %116
  store i8* %117, i8** %16, align 8
  %118 = load i8*, i8** %16, align 8
  %119 = bitcast i8* %118 to %struct.qeth_arp_qi_entry5*
  %120 = getelementptr inbounds %struct.qeth_arp_qi_entry5, %struct.qeth_arp_qi_entry5* %119, i32 0, i32 0
  store %struct.qeth_arp_entrytype* %120, %struct.qeth_arp_entrytype** %18, align 8
  %121 = load %struct.qeth_arp_entrytype*, %struct.qeth_arp_entrytype** %18, align 8
  %122 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %8, align 8
  %123 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @arpentry_matches_prot(%struct.qeth_arp_entrytype* %121, i32 %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %136, label %128

128:                                              ; preds = %112
  %129 = load i32, i32* @TRACE, align 4
  %130 = call i32 @QETH_DBF_TEXT(i32 %129, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %131 = load i32, i32* @TRACE, align 4
  %132 = load %struct.qeth_arp_entrytype*, %struct.qeth_arp_entrytype** %18, align 8
  %133 = getelementptr inbounds %struct.qeth_arp_entrytype, %struct.qeth_arp_entrytype* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = call i32 @QETH_DBF_TEXT_(i32 %131, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i64 %134)
  br label %209

136:                                              ; preds = %112
  %137 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %138 = load %struct.qeth_arp_query_data*, %struct.qeth_arp_query_data** %9, align 8
  %139 = load %struct.qeth_arp_entrytype*, %struct.qeth_arp_entrytype** %18, align 8
  %140 = load i32, i32* %15, align 4
  %141 = call i64 @get_arp_entry_size(%struct.qeth_card* %137, %struct.qeth_arp_query_data* %138, %struct.qeth_arp_entrytype* %139, i32 %140)
  store i64 %141, i64* %17, align 8
  %142 = load i32, i32* @TRACE, align 4
  %143 = load i64, i64* %17, align 8
  %144 = call i32 @QETH_DBF_TEXT_(i32 %142, i32 5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i64 %143)
  %145 = load i64, i64* %17, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %148, label %147

147:                                              ; preds = %136
  br label %209

148:                                              ; preds = %136
  %149 = load %struct.qeth_arp_query_info*, %struct.qeth_arp_query_info** %10, align 8
  %150 = getelementptr inbounds %struct.qeth_arp_query_info, %struct.qeth_arp_query_info* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.qeth_arp_query_info*, %struct.qeth_arp_query_info** %10, align 8
  %153 = getelementptr inbounds %struct.qeth_arp_query_info, %struct.qeth_arp_query_info* %152, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = sub nsw i64 %151, %154
  %156 = load i64, i64* %17, align 8
  %157 = icmp slt i64 %155, %156
  br i1 %157, label %158, label %169

158:                                              ; preds = %148
  %159 = load i32, i32* @TRACE, align 4
  %160 = load i64, i64* @ENOMEM, align 8
  %161 = sub nsw i64 0, %160
  %162 = call i32 @QETH_DBF_TEXT_(i32 %159, i32 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i64 %161)
  %163 = load i64, i64* @ENOMEM, align 8
  %164 = sub nsw i64 0, %163
  %165 = trunc i64 %164 to i32
  %166 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %8, align 8
  %167 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 0
  store i32 %165, i32* %168, align 8
  br label %258

169:                                              ; preds = %148
  %170 = load %struct.qeth_arp_query_info*, %struct.qeth_arp_query_info** %10, align 8
  %171 = getelementptr inbounds %struct.qeth_arp_query_info, %struct.qeth_arp_query_info* %170, i32 0, i32 3
  %172 = load i64, i64* %171, align 8
  %173 = load %struct.qeth_arp_query_info*, %struct.qeth_arp_query_info** %10, align 8
  %174 = getelementptr inbounds %struct.qeth_arp_query_info, %struct.qeth_arp_query_info* %173, i32 0, i32 2
  %175 = load i64, i64* %174, align 8
  %176 = add nsw i64 %172, %175
  %177 = load %struct.qeth_arp_query_data*, %struct.qeth_arp_query_data** %9, align 8
  %178 = getelementptr inbounds %struct.qeth_arp_query_data, %struct.qeth_arp_query_data* %177, i32 0, i32 1
  %179 = load i32, i32* %13, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i8, i8* %178, i64 %180
  %182 = load i32, i32* %14, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i8, i8* %181, i64 %183
  %185 = bitcast i8* %184 to i32*
  %186 = load i64, i64* %17, align 8
  %187 = trunc i64 %186 to i32
  %188 = call i32 @memcpy(i64 %176, i32* %185, i32 %187)
  %189 = load i64, i64* %17, align 8
  %190 = load i32, i32* %14, align 4
  %191 = sext i32 %190 to i64
  %192 = add nsw i64 %189, %191
  %193 = load i32, i32* %13, align 4
  %194 = sext i32 %193 to i64
  %195 = add nsw i64 %194, %192
  %196 = trunc i64 %195 to i32
  store i32 %196, i32* %13, align 4
  %197 = load i64, i64* %17, align 8
  %198 = load %struct.qeth_arp_query_info*, %struct.qeth_arp_query_info** %10, align 8
  %199 = getelementptr inbounds %struct.qeth_arp_query_info, %struct.qeth_arp_query_info* %198, i32 0, i32 2
  %200 = load i64, i64* %199, align 8
  %201 = add nsw i64 %200, %197
  store i64 %201, i64* %199, align 8
  %202 = load %struct.qeth_arp_query_info*, %struct.qeth_arp_query_info** %10, align 8
  %203 = getelementptr inbounds %struct.qeth_arp_query_info, %struct.qeth_arp_query_info* %202, i32 0, i32 4
  %204 = load i64, i64* %203, align 8
  %205 = add nsw i64 %204, 1
  store i64 %205, i64* %203, align 8
  br label %206

206:                                              ; preds = %169
  %207 = load i32, i32* %12, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %12, align 4
  br label %105

209:                                              ; preds = %147, %128, %105
  %210 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %8, align 8
  %211 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %213, i32 0, i32 1
  %215 = load i64, i64* %214, align 8
  %216 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %8, align 8
  %217 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %219, i32 0, i32 2
  %221 = load i64, i64* %220, align 8
  %222 = icmp slt i64 %215, %221
  br i1 %222, label %223, label %224

223:                                              ; preds = %209
  store i32 1, i32* %4, align 4
  br label %263

224:                                              ; preds = %209
  %225 = load i32, i32* @TRACE, align 4
  %226 = load %struct.qeth_arp_query_info*, %struct.qeth_arp_query_info** %10, align 8
  %227 = getelementptr inbounds %struct.qeth_arp_query_info, %struct.qeth_arp_query_info* %226, i32 0, i32 4
  %228 = load i64, i64* %227, align 8
  %229 = call i32 @QETH_DBF_TEXT_(i32 %225, i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i64 %228)
  %230 = load %struct.qeth_arp_query_info*, %struct.qeth_arp_query_info** %10, align 8
  %231 = getelementptr inbounds %struct.qeth_arp_query_info, %struct.qeth_arp_query_info* %230, i32 0, i32 3
  %232 = load i64, i64* %231, align 8
  %233 = load %struct.qeth_arp_query_info*, %struct.qeth_arp_query_info** %10, align 8
  %234 = getelementptr inbounds %struct.qeth_arp_query_info, %struct.qeth_arp_query_info* %233, i32 0, i32 4
  %235 = bitcast i64* %234 to i32*
  %236 = call i32 @memcpy(i64 %232, i32* %235, i32 4)
  %237 = load %struct.qeth_arp_query_info*, %struct.qeth_arp_query_info** %10, align 8
  %238 = getelementptr inbounds %struct.qeth_arp_query_info, %struct.qeth_arp_query_info* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = load i32, i32* @QETH_QARP_STRIP_ENTRIES, align 4
  %241 = and i32 %239, %240
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %249

243:                                              ; preds = %224
  %244 = load i32, i32* @QETH_QARP_STRIP_ENTRIES, align 4
  %245 = load %struct.qeth_arp_query_data*, %struct.qeth_arp_query_data** %9, align 8
  %246 = getelementptr inbounds %struct.qeth_arp_query_data, %struct.qeth_arp_query_data* %245, i32 0, i32 2
  %247 = load i32, i32* %246, align 4
  %248 = or i32 %247, %244
  store i32 %248, i32* %246, align 4
  br label %249

249:                                              ; preds = %243, %224
  %250 = load %struct.qeth_arp_query_info*, %struct.qeth_arp_query_info** %10, align 8
  %251 = getelementptr inbounds %struct.qeth_arp_query_info, %struct.qeth_arp_query_info* %250, i32 0, i32 3
  %252 = load i64, i64* %251, align 8
  %253 = load i64, i64* @QETH_QARP_MASK_OFFSET, align 8
  %254 = add nsw i64 %252, %253
  %255 = load %struct.qeth_arp_query_data*, %struct.qeth_arp_query_data** %9, align 8
  %256 = getelementptr inbounds %struct.qeth_arp_query_data, %struct.qeth_arp_query_data* %255, i32 0, i32 2
  %257 = call i32 @memcpy(i64 %254, i32* %256, i32 2)
  store i32 0, i32* %4, align 4
  br label %263

258:                                              ; preds = %158
  store i32 0, i32* %11, align 4
  %259 = load %struct.qeth_arp_query_info*, %struct.qeth_arp_query_info** %10, align 8
  %260 = getelementptr inbounds %struct.qeth_arp_query_info, %struct.qeth_arp_query_info* %259, i32 0, i32 3
  %261 = load i64, i64* %260, align 8
  %262 = call i32 @memcpy(i64 %261, i32* %11, i32 4)
  store i32 0, i32* %4, align 4
  br label %263

263:                                              ; preds = %258, %249, %223, %55, %32
  %264 = load i32, i32* %4, align 4
  ret i32 %264
}

declare dso_local i32 @QETH_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i32 @QETH_DBF_TEXT_(i32, i32, i8*, i64) #1

declare dso_local i32 @arpentry_matches_prot(%struct.qeth_arp_entrytype*, i32) #1

declare dso_local i64 @get_arp_entry_size(%struct.qeth_card*, %struct.qeth_arp_query_data*, %struct.qeth_arp_entrytype*, i32) #1

declare dso_local i32 @memcpy(i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
